import SwiftUI
import RealityKit
import RealityKitContent

struct MainMenuView: View {
    @State private var listOfChapters: [String] = ["Chapter 1"]
    @State private var selectedChapter: String? = nil

    var body: some View {
        NavigationStack {
            VStack {
                Text("GitHub Practice")
                    .font(.extraLargeTitle)
                
                Text("100 Days of SwiftUI")
                    .font(.title)
                
                Text("You will be doing one chapter a day for 100 days.")
                
                List(listOfChapters, id: \.self, selection: $selectedChapter) { chapter in
                    Text(chapter)
                }
            }
            .padding()
        }
    }
}

#Preview(windowStyle: .automatic) {
    MainMenuView()
}
