import SwiftUI
import WebKit

struct ChapterDetailView: View {
    let swiftUIDayModel: SwiftUIDayModel

    var body: some View {
        VStack {
            Text("Chapter \(swiftUIDayModel.number) Detail View")
            Text("\(swiftUIDayModel.title)")
            Text(String(swiftUIDayModel.isCompleted))
            Text(swiftUIDayModel.notes)
            
            WebView(url: swiftUIDayModel.url)

        }
    }
}

#Preview {
    ChapterDetailView(swiftUIDayModel: SwiftUIDayModel.sample)
}
