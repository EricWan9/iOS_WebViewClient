# iOS_WebViewClient
This project encapsulates the web page into an iOS application, modify the following code in MainActivity, and replace the string "https://github.com/" with your url.
```swift
class WebViewModel: ObservableObject {
    let webView: WKWebView
    let url: URL
    
    init() {
        webView = WKWebView(frame: .zero)
        url = URL(string: "https://github.com/")!

        loadUrl()
    }
    
    func loadUrl() {
        webView.load(URLRequest(url: url))
    }
}
```
