import SwiftUI
import WebKit

struct ChapterDetailView: View {
    @Environment(\.openWindow) private var openWindow

    let swiftUIDayModel: SwiftUIDayModel
    @State private var notes = ""
    
    var body: some View {
        VStack {
            Text("Chapter \(swiftUIDayModel.number) Detail View")
            Text("\(swiftUIDayModel.title)")
            Text(String(swiftUIDayModel.isCompleted))
            Text(swiftUIDayModel.notes)
            
            
                ScrollView {
                    TextField("Add notes...", text: $notes)
                        .padding()
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .background(.gray.opacity(0.4))
                
            Button("Open Website") {
                openWindow(id: "webview")
            }
        }
    }
}

#Preview {
    ChapterDetailView(swiftUIDayModel: SwiftUIDayModel.sample)
}
