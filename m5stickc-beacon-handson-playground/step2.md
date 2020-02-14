### 2-1. ハードウェアIDを発行する

下記URLから [LINE Simple BeaconのハードウェアIDを発行]ボタンを押します。
[https://manager.line.biz/beacon/register](https://manager.line.biz/beacon/register)

![s200](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/m5stickc-beacon-handson-playground/images/s200.png)

アカウントリストから作成した「M5StickCビーコン」のボットを選択します。

![s201](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/m5stickc-beacon-handson-playground/images/s201.png)

［ハードウェアIDを発行］ボタンをクリックして、発行されたハードウェアIDをメモしておきます。
![s202](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/m5stickc-beacon-handson-playground/images/s202.png)

### 2-2. M5StickCに書き込む

Arduino IDEを開いて、下記コードを適用してください。
途中にある `HWID` は先程取得したものに変えてください。

```c
#include <M5StickC.h>
#include <string>
#include "BLEDevice.h"
#include "BLEAdvertising.h"

/**
 * Bluetooth TX power level(index), it's just a index corresponding to power(dbm).
 * * ESP_PWR_LVL_N12 (-12 dbm)
 * * ESP_PWR_LVL_N9  (-9 dbm)
 * * ESP_PWR_LVL_N6  (-6 dbm)
 * * ESP_PWR_LVL_N3  (-3 dbm)
 * * ESP_PWR_LVL_N0  ( 0 dbm)
 * * ESP_PWR_LVL_P3  (+3 dbm)
 * * ESP_PWR_LVL_P6  (+6 dbm)
 * * ESP_PWR_LVL_P9  (+9 dbm)
 */
#define POWER_LEVEL ESP_PWR_LVL_P9

// 発行したハードウェアIDを書き換える
#define HWID "xxxxxxxx"
bool beaconFlg = false;

BLEAdvertising *pAdvertising;

std::string hexEncode(std::string raw) {
  const char *hexMap = "0123456789abcdef";
  std::string hex = "";
  for(int i=0; i<raw.size(); i++) {
    hex += hexMap[(raw[i] >> 4) & 0x0F];
    hex += hexMap[raw[i] & 0x0F];
  }
  return hex;
}

int htoi (unsigned char c)
{
  if ('0' <= c && c <= '9') return c - '0';
  if ('A' <= c && c <= 'F') return c - 'A' + 10;
  if ('a' <= c && c <= 'f') return c - 'a' + 10;
  return 0;
}

std::string hexDecode(std::string hex) {
  if (hex.size() % 2) return "";
  std::string raw = "";
  for(int i=0; i<hex.size(); i+=2) {
    raw += (char) ( htoi(hex[i]) * 16 + htoi(hex[i+1]) );
  }
  return raw;
}

bool setLINEBeacon (std::string hwid, std::string msg) {
  // check hwid
  if (hwid.size() != 5 || msg.size() > 13) return false;

  BLEAdvertisementData oAdvertisementData = BLEAdvertisementData();
  BLEAdvertisementData oScanResponseData = BLEAdvertisementData();
  BLEUUID line_uuid("FE6F");

  // flag
  // LE General Discoverable Mode (2)
  // BR/EDR Not Supported (4)
  oAdvertisementData.setFlags(0x06);

  // LINE Corp UUID
  oAdvertisementData.setCompleteServices(line_uuid);

  // Service Data
  std::string payload = "";
  payload += (char) 0x02; // Frame Type of the LINE Simple Beacon Frame
  payload += hwid; // HWID of LINE Simple Beacon
  payload += 0x7F; // Measured TxPower of the LINE Simple Beacon Frame
  payload += msg; // Device message of LINE Simple Beacon Frame
  oAdvertisementData.setServiceData(line_uuid, payload);

  pAdvertising->setAdvertisementData(oAdvertisementData);
  pAdvertising->setScanResponseData(oScanResponseData);
  return true;
}

void setup() {
  M5.begin();
  BLEDevice::init("");
  esp_ble_tx_power_set(ESP_BLE_PWR_TYPE_ADV, POWER_LEVEL);
  pAdvertising = BLEDevice::getAdvertising();

  M5.Lcd.setCursor(0, 30);
  M5.Lcd.print("Ready");
}

void loop()
{
  // The underlying framework will advertise periodically.
  // we simply wait here.
  if (M5.BtnA.wasReleased()) {
    if (!beaconFlg) {
      // LINE BeaconをONにする
      setLINEBeacon(hexDecode(HWID), hexEncode(std::string((const char*) BLEDevice::getAddress().getNative(), 6)));
      pAdvertising->start();
      M5.Lcd.fillScreen(BLACK);
      M5.Lcd.setCursor(0, 30);
      M5.Lcd.print("line beacon! ON");
      beaconFlg = true;
    } else {
      // LINE BeaconをOFFにする
      //// LINE Beaconをストップする機能は現在動作しないようです。下記URLを参考にしてください。
      //// https://github.com/nkolban/esp32-snippets/issues/797
      pAdvertising = BLEDevice::getAdvertising();
      pAdvertising->stop();
      M5.Lcd.fillScreen(BLACK);
      M5.Lcd.setCursor(0, 30);
      M5.Lcd.print("line beacon! OFF");
      beaconFlg = false;
    }
  }
  M5.update();
}
```{{copy}}

M5Stackの方はこちらをコピペしてください。

```c
#include <M5Stack.h>
#include <string>
#include "BLEDevice.h"
#include "BLEAdvertising.h"

/**
 * Bluetooth TX power level(index), it's just a index corresponding to power(dbm).
 * * ESP_PWR_LVL_N12 (-12 dbm)
 * * ESP_PWR_LVL_N9  (-9 dbm)
 * * ESP_PWR_LVL_N6  (-6 dbm)
 * * ESP_PWR_LVL_N3  (-3 dbm)
 * * ESP_PWR_LVL_N0  ( 0 dbm)
 * * ESP_PWR_LVL_P3  (+3 dbm)
 * * ESP_PWR_LVL_P6  (+6 dbm)
 * * ESP_PWR_LVL_P9  (+9 dbm)
 */
#define POWER_LEVEL ESP_PWR_LVL_P9

// 発行したハードウェアIDを書き換える
#define HWID "xxxxxxxxxx"
bool beaconFlg = false;

BLEAdvertising *pAdvertising;

std::string hexEncode(std::string raw) {
  const char *hexMap = "0123456789abcdef";
  std::string hex = "";
  for(int i=0; i<raw.size(); i++) {
    hex += hexMap[(raw[i] >> 4) & 0x0F];
    hex += hexMap[raw[i] & 0x0F];
  }
  return hex;
}

int htoi (unsigned char c)
{
  if ('0' <= c && c <= '9') return c - '0';
  if ('A' <= c && c <= 'F') return c - 'A' + 10;
  if ('a' <= c && c <= 'f') return c - 'a' + 10;
  return 0;
}

std::string hexDecode(std::string hex) {
  if (hex.size() % 2) return "";
  std::string raw = "";
  for(int i=0; i<hex.size(); i+=2) {
    raw += (char) ( htoi(hex[i]) * 16 + htoi(hex[i+1]) );
  }
  return raw;
}

bool setLINEBeacon (std::string hwid, std::string msg) {
  // check hwid
  if (hwid.size() != 5 || msg.size() > 13) return false;

  BLEAdvertisementData oAdvertisementData = BLEAdvertisementData();
  BLEAdvertisementData oScanResponseData = BLEAdvertisementData();
  BLEUUID line_uuid("FE6F");

  // flag
  // LE General Discoverable Mode (2)
  // BR/EDR Not Supported (4)
  oAdvertisementData.setFlags(0x06);

  // LINE Corp UUID
  oAdvertisementData.setCompleteServices(line_uuid);

  // Service Data
  std::string payload = "";
  payload += (char) 0x02; // Frame Type of the LINE Simple Beacon Frame
  payload += hwid; // HWID of LINE Simple Beacon
  payload += 0x7F; // Measured TxPower of the LINE Simple Beacon Frame
  payload += msg; // Device message of LINE Simple Beacon Frame
  oAdvertisementData.setServiceData(line_uuid, payload);

  pAdvertising->setAdvertisementData(oAdvertisementData);
  pAdvertising->setScanResponseData(oScanResponseData);
  return true;
}

void setup() {
  M5.begin();
  BLEDevice::init("");
  esp_ble_tx_power_set(ESP_BLE_PWR_TYPE_ADV, POWER_LEVEL);
  pAdvertising = BLEDevice::getAdvertising();

  M5.Lcd.setCursor(0, 30);
  M5.Lcd.print("Ready");
}

void loop()
{
  // The underlying framework will advertise periodically.
  // we simply wait here.
  if (M5.BtnB.wasReleased()) {
    if (!beaconFlg) {
      // LINE BeaconをONにする
      setLINEBeacon(hexDecode(HWID), hexEncode(std::string((const char*) BLEDevice::getAddress().getNative(), 6)));
      pAdvertising->start();
      M5.Lcd.fillScreen(BLACK);
      M5.Lcd.setCursor(0, 30);
      M5.Lcd.print("line beacon! ON");
      beaconFlg = true;
    } else {
      // LINE BeaconをOFFにする
      //// LINE Beaconをストップする機能は現在動作しないようです。下記URLを参考にしてください。
      //// https://github.com/nkolban/esp32-snippets/issues/797
      pAdvertising = BLEDevice::getAdvertising();
      pAdvertising->stop();
      M5.Lcd.fillScreen(BLACK);
      M5.Lcd.setCursor(0, 30);
      M5.Lcd.print("line beacon! OFF");
      beaconFlg = false;
    }
  }
  M5.update();
}
```{{copy}}

### 2-3. LINE Beaconを有効化にする
LINEアプリの設定ページにある「プライバシー管理」-「情報の提供」の「LINE Beason」にチェックを入れてください。「同意して利用開始」ボタンをクリックしてLINE Beaconを有効化にします。

![s203](https://raw.githubusercontent.com/gaomar/katacoda-scenarios/master/m5stickc-beacon-handson-playground/images/s203.png)

これでM5StickCをビーコン化することができました。
