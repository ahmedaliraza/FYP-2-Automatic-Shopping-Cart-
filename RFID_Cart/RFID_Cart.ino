#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <ArduinoJson.h>
#include <SPI.h>
#include <MFRC522.h>
#include <LiquidCrystal_I2C.h>
#include <Wire.h>


#define RST_PIN         9         // Configurable, see typical pin layout above
#define SS_PIN          D4         // Configurable, see typical pin layout above
#define MODE_BUTTON D3
#define TOTAL_BUTTON D8


const char* ssid     = "BILAL";  
const char* password = "12345678";
String host ="http://192.168.43.12/";

LiquidCrystal_I2C lcd(0x27, 20, 4);
MFRC522 mfrc522(SS_PIN, RST_PIN);  // Create MFRC522 instance

boolean mode_button_state = LOW;
boolean total_button_state = LOW;

void setup() {
	Serial.begin(9600);		// Initialize serial communications with the PC
	while (!Serial);		// Do nothing if no serial port is opened (added for Arduinos based on ATMEGA32U4)
	SPI.begin();			// Init SPI bus
	mfrc522.PCD_Init();		// Init MFRC522


//
pinMode(MODE_BUTTON,INPUT_PULLUP);
pinMode(TOTAL_BUTTON,INPUT);
digitalWrite(TOTAL_BUTTON,LOW);
Wire.begin(D2, D1);   //Use predefined PINS consts
lcd.begin();      // The begin call takes the width and height. This
//lcd.init();                      // Should match the number provided to the constructor.

lcd.backlight();      // Turn on the backlight.

lcd.clear();
lcd.setCursor(0, 0);  // Move the cursor at origin
lcd.print("  IQRA  UNIVERSITY  ");
lcd.setCursor(0, 1);
lcd.print("  CARTIGO  ");
lcd.setCursor(0, 2);
lcd.print(" DEPARTMENT BS-CS ");
lcd.setCursor(0, 3);
lcd.print(" BILAL-AHMED-HAMZA ");
delay(4000);

 WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  Serial.println("");
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("IP:");
  lcd.setCursor(5, 0);
  lcd.print(WiFi.localIP());
  delay(3000);
  lcd.clear();
  lcd.setCursor(0, 0);  // Move the cursor at origin
  lcd.print("Cart is ready");
 
}

void loop() {
HTTPClient http;

if(digitalRead(MODE_BUTTON)==LOW){
  if(mode_button_state==HIGH){
    mode_button_state=LOW;
    delay(300);
  }
  else{
    mode_button_state = HIGH;
    delay(300);
  }  
}

if(digitalRead(TOTAL_BUTTON)==HIGH){
  /*if(total_button_state==HIGH){
    total_button_state=LOW;
    delay(300);
  }
  else{*/
    total_button_state = HIGH;
    String url1 =host+"RFID/updateCart.php?total=1"; 
    http.begin(url1);
    int statusCode1 = http.GET();

    String url2 =host+"RFID/updateCart.php?getTotal"; 
    http.begin(url2);
    int statusCode2 = http.GET();
    
    StaticJsonDocument<1082> doc1;
    DeserializationError error = deserializeJson(doc1, http.getString());
    if (error) {
    Serial.print(F("deserializeJson() failed: "));
    Serial.println(error.c_str());
    return;
   }

   if(statusCode2==200){
    const float total = doc1["total"];
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Total Bill:");
    lcd.setCursor(11, 0);
    lcd.print(total);
   }
   
    delay(300);
  //} 
}
//Serial.println(total_button_state);

  if ( ! mfrc522.PICC_IsNewCardPresent()) 
  {
    return;
  }
  // Select one of the cards
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }

    lcd.clear();
  //Show UID on serial monitor
  Serial.print("UID tag :");
  
String strID = "";
  for (byte i = 0; i < 4; i++) {
    strID +=
    (mfrc522.uid.uidByte[i] < 0x10 ? "0" : "") +
    String(mfrc522.uid.uidByte[i], HEX);
  }
  strID.toUpperCase();

  Serial.println(strID);

  Serial.println(mode_button_state);
  //Serial.println(total_button_state);

  //HTTPClient http;
  String url =host+"RFID/updateCart.php?rfid="+strID;
  if(mode_button_state==LOW){
    url+="&action=1";
  }else{
     url+="&action=2";  
  }
  
  Serial.println(url);
  http.begin(url);
  int statusCode = http.GET();
  Serial.println("Status code: "+statusCode);

  StaticJsonDocument<1082> doc;
  DeserializationError error = deserializeJson(doc, http.getString());
  http.end(); 

  if (error) {
    Serial.print(F("deserializeJson() failed: "));
    Serial.println(error.c_str());
    return;
  }
//code for lcd menu
  lcd.setCursor(0, 0);  // Move the cursor at origin
  lcd.print("NOP:");
  lcd.setCursor(14, 1);  // Move the cursor at origin
  lcd.print("Mode:");
  lcd.setCursor(19, 1);  // Move the cursor at origin

  if(mode_button_state==LOW){
    lcd.print("+");
  }else{
    lcd.print("-");  
  }
  
  lcd.setCursor(0, 1);
  lcd.print("POP:");
  lcd.setCursor(0, 2);
  lcd.print("Total Bill:");
  lcd.setCursor(0, 3);
  lcd.print("Total Products:");

  if(statusCode==200){
    const char* name = doc["name"];
    const char* price = doc["price"];
    const int total_products = doc["total_products"];
    const float total_amount = doc["total_amount"];
    Serial.println(name);
    lcd.setCursor(4,0);
    lcd.print(name);  
    
    Serial.println(price);
    lcd.setCursor(4,1);
    lcd.print(price);
    
    Serial.println(total_amount);
    lcd.setCursor(11,2);
    lcd.print(total_amount);
    
    Serial.println(total_products);
    lcd.setCursor(15,3);
    lcd.print(total_products);
  }

  
  mfrc522.PICC_HaltA();
  mfrc522.PCD_StopCrypto1();
  
  delay(1000);
}
