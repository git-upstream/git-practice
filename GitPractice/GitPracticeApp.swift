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
// MARK: This is the first comment as a team member for git-collaborator
// MARK: This is the second comment as a team member for git-collaborator
