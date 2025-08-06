import SwiftUI

@Observable
class WindowGroupManager {
    var currentWindowGroup: WindowGroupType = .mainMenu
}

enum WindowGroupType: String {
    case mainMenu = "mainMenu"
    case webview = "webview"
}

// Error
