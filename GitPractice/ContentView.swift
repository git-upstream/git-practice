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
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
