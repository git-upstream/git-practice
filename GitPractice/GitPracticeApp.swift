import SwiftUI
// MARK: THIS IS A LONG COMMENT>>>>>>>>>>
@main
struct GitPracticeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .defaultSize(width: 1280, height: 720)
        .windowStyle(.plain)

        WindowGroup {
            MainMenuView()
        }
    }
}
