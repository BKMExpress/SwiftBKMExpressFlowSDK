# BKM EXPRESS FLOW SDK


## NE İŞE YARAR?

> Hizmetinize sunulan BKM Express Flow iOS SDK paketi ile son kullanıcının iOS cihazında BKMExpress uygulaması kurulu olmasa dahi, "Ödeme Yapma" özelliğini, uygulamanızdan çıkış yapma gereksinimi olmadan halletmenize olanak sunar.

## Gereksinimler

 - iOS 9.0 ve üzeri
 - CocoaPods
 
 ## NASIL ÇALIŞIR?
 
 Işyerleri BKM Express entegrasyonlarını tamamlayarak gerekli İşyeri servis uygulamaları ile BKM sunucularında oturum açtıktan sonra, yarattıkları ödeme işlerinden kendilerine iletilen **TICKET_TOKEN** , **TICKET_ID** ve **TICKET_PATH** parametreleri ile çalışmak istedikleri ortamı seçerek BKMExpress Flow SDK akışı başlatabilirler.
 BKM sunucularında oturum açma ile detayli bilgiye [buradan](https://test-api.bkmexpress.com.tr/docs) ulaşabilirsiniz.

## CocoaPods Entegrasyonu

```ruby
pod 'BKMExpressFlowSDK', '1.0.4'
```

## Örnek Kullanım

```swift

// instantiate view controller with custom constructor
let instanceOfCustomObject: BKMExpressPaymentViewController = BKMExpressPaymentViewController(bexTicketToken: kTICKET_TOKEN, bexTicketPath: kTICKET_PATH, bexTicketId :kTICKET_ID, delegate: self)

// if debug mode is enabled, this sdk connect to preprod otherwise connect to prod.
instanceOfCustomObject.setEnableDebugMode(false)

// Present view controller
self.present(instanceOfCustomObject , animated:true,completion: nil)

```
DebugMode enable edilerek test sunucularına, disable edilerek production sunucularına istek gönderilebilir.

## BKMOTPDelegate

```swift

func bkmExpressPaymentDidComplete() {
NSLog("Successful payment")
}

func bkmExpressPaymentDidFail(_ error: Error!) {
NSLog("An error has occurred on payment %@", error.localizedDescription)
}

func bkmExpressPaymentDidCancel() {
NSLog("Payment is cancelled by user")
}
```


