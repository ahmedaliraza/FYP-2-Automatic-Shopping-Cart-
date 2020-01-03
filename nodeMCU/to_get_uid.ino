
#include <SPI.h>
#include <MFRC522.h>
#include <LiquidCrystal_I2C.h>
#include <Wire.h>


#define RST_PIN         D3         // Configurable, see typical pin layout above
#define SS_PIN          D4         // Configurable, see typical pin layout above

LiquidCrystal_I2C lcd(0x3F, 20, 4);
MFRC522 mfrc522(SS_PIN, RST_PIN);  // Create MFRC522 instance

void setup() {
  Serial.begin(9600);   // Initialize serial communications with the PC
  while (!Serial);    // Do nothing if no serial port is opened (added for Arduinos based on ATMEGA32U4)
  SPI.begin();      // Init SPI bus
  mfrc522.PCD_Init();   // Init MFRC522



Wire.begin(D2, D1);   //Use predefined PINS consts
lcd.init();      // The begin call takes the width and height. This
                      // Should match the number provided to the constructor.

lcd.backlight();      // Turn on the backlight.

lcd.clear();
lcd.setCursor(0, 0);  // Move the cursor at origin
lcd.print("RFID BASED SHOPPING");
lcd.setCursor(3, 1);
lcd.print("TROLLY WITH PHP");
lcd.setCursor(10, 2);
lcd.print("DATA-BASE");
lcd.setCursor(5, 3);
lcd.print("");
delay(2000);
lcd.clear();

}

void loop() {
  lcd.clear();
  // Look for new cards
  // Look for new cards
  if ( ! mfrc522.PICC_IsNewCardPresent()) 
  {
    return;
  }
  // Select one of the cards
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }


  //Show UID on serial monitor
  Serial.print("UID tag :");
  
  /*String content= "";
  byte letter;
  for (byte i = 0; i < mfrc522.uid.size; i++) 
  {
     Serial.print(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " ");
     Serial.print(mfrc522.uid.uidByte[i], DEC);
     
     content.concat(String(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " "));
     content.concat(String(mfrc522.uid.uidByte[i], DEC));
  }
  Serial.println();
  content.toUpperCase();
*/
String strID = "";
  for (byte i = 0; i < 4; i++) {
    strID +=
    (mfrc522.uid.uidByte[i] < 0x10 ? "0" : "") +
    String(mfrc522.uid.uidByte[i], HEX);
  }
  strID.toUpperCase();

  Serial.println(strID);

  mfrc522.PICC_HaltA();
  mfrc522.PCD_StopCrypto1();

delay(1000);
}
