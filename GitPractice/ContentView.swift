import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Text("GitHub Practice")
                .font(.extraLargeTitle)

            Text("100 Days of SwiftUI")
                .font(.title)

            Text("You will be doing one chapter a day for 100 days.")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
