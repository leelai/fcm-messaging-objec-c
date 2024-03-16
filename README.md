# Firebase Cloud Messaging (FCM) 推送通知設定指南

本指南旨在幫助開發者快速設定 Firebase Cloud Messaging (FCM) 以實現 iOS 應用的推送通知功能。

## 步驟 1: 申請 Apple 推送通知的 Key

1. 訪問 [Apple Developer Program](https://developer.apple.com/) 網站。
2. 申請一個包含推送通知功能的 Key。

## 步驟 2: 創建新項目並設定 Bundle ID

1. 使用 Xcode 創建一個新項目。
2. 設定一個唯一的 Bundle ID 用於該項目。

## 步驟 3: 在 Firebase 中註冊應用並上傳 Key

1. 使用創建項目時設定的 Bundle ID 在 [Firebase 控制台](https://console.firebase.google.com/) 中註冊一個新應用。
2. 上傳從 Apple Developer Program 獲得的推送通知 Key。

## 步驟 4: 使用 CocoaPods 添加 Firebase 依賴

1. 在項目根目錄下開啟終端機，運行 `pod init`。
2. 在 Podfile 中添加以下內容：

    ```ruby
    pod 'Firebase/Analytics'
    pod 'Firebase/Messaging'
    ```

3. 運行 `pod install` 安裝這些依賴。

## 步驟 5: 添加代碼並參考 Firebase 官方範例

- 參考 Firebase 官方提供的範例和指南，將相關代碼添加到你的項目中。官方範例可以在以下鏈接找到：[Firebase Messaging Quickstart](https://github.com/firebase/quickstart-ios/tree/df0a562a7ec21515f9f43bd886c465a44dc5bcff/messaging/MessagingExample)。


## 步驟 6: 修改 Info.plist 以禁用 FirebaseAppDelegateProxy

- 在你的 Info.plist 文件中添加一項 `FirebaseAppDelegateProxyEnabled` 並將其值設置為 `NO`。

## 步驟 7: 在代碼中將 APNs Token 指定給 Firebase Messaging

- 確保在你的應用代碼中，將從應用獲取的 APNs Token 正確指定給 Firebase Messaging 的 `FIRMessage`。

## 結語

按照上述步驟操作後，你的 iOS 應用應該能夠接收由 Firebase Cloud Messaging (FCM) 發送的推送通知了。如果在設定過程中遇到任何問題，請參考 Firebase 官方文檔或尋求社群的幫助。

