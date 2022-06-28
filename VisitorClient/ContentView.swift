//
//  ContentView.swift
//  VisitorClient
//
//  Created by bzwang on 2022/6/28.
//

import SwiftUI
import CoreData
import WebKit

struct UIWebView: UIViewRepresentable {
    typealias UIViewType = WKWebView

    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) { }
}

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

struct ContentView: View {
    
    @StateObject var model = WebViewModel()
    
    var body: some View {
        UIWebView(webView: model.webView)
    }
}

