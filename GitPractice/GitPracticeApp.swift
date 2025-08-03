import SwiftUI

@main
struct GitPracticeApp: App {
    @State private var windowGroupManager = WindowGroupManager()
    
    var body: some Scene {
        WindowGroup(id: WindowGroupType.mainMenu.rawValue) {
            MainMenuView()
                .environment(windowGroupManager)
        }
        .defaultSize(width: 600, height: 600)
        
        WindowGroup(id: WindowGroupType.webview.rawValue, for: SwiftUIDayModel.self, content: { $day in
            SwiftUIWebView(day: $day)
                .environment(windowGroupManager)
        })
        .defaultSize(width: 700, height: 720)
        .defaultWindowPlacement { _, context in
            if let mainWindow = context.windows.first(where: { $0.id == "mainMenu" }) {
                return WindowPlacement(.trailing(mainWindow))
            }
            return WindowPlacement(.none)
        }

    }
}


//
//WindowGroup(id: "FlowerWindow", for: FlowerItem.self, content: { $value in
//    DetailView(item: $value)
//})
