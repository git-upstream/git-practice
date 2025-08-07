import UIKit
import SwiftUI
import RealityKit
import RealityKitContent

struct MainMenuView: View {
    @State private var listOfSwiftUIDays: [SwiftUIDayModel] = [SwiftUIDayModel.sample]
    @State private var selectedSwiftUIDay: SwiftUIDayModel?
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("GitHub Practice")
                    .font(.extraLargeTitle)
                
                Text("100 Days of SwiftUI")
                    .font(.title)
                
                Text("You will be doing one chapter a day for 100 days.")
                
                List(listOfSwiftUIDays, id: \.id) { day in
                    Button {
                        selectedSwiftUIDay = day
                    } label: {
                        HStack {
                            Text("Day \(day.number): \(day.title)")
                            if day.isCompleted {
                                Image(systemName: "checkmark.circle.fill")
                            }
                        }
                    }
                }
            }
            .padding(50)
            // too much padding
            .navigationDestination(item: $selectedSwiftUIDay) { day in
                ChapterDetailView(swiftUIDayModel: day)
            }
        }
    }
}

#Preview(windowStyle: .plain) {
    MainMenuView()
}
// add coment from collaborator
// step 1
// step 2
// step 3
// step 4
// step 5 other collaborator
