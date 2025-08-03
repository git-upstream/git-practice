import SwiftUI

struct SwiftUIWebView: View {
    @Binding var day: SwiftUIDayModel?
    
    var body: some View {
        VStack {
            WebView(url: day?.url ?? "https://www.hackingwithswift.com")
        }
    }
}

#Preview {
    SwiftUIWebView(day: .constant(SwiftUIDayModel.sample))
}
