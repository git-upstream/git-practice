import Foundation

struct SwiftUIDayModel: Identifiable, Hashable {
    let id = UUID()
    let number: Int
    let title: String
    let url: String
    var isCompleted: Bool
    var notes: String = ""

    mutating func toggleCompleted() {
        isCompleted.toggle()
    }

    mutating func updateNotes(_ notes: String) {
        self.notes = notes
    }

    static let sample = SwiftUIDayModel(
        number: 1,
        title: "Intro to SwiftUI",
        url: "https://www.hackingwithswift.com/100/swiftui/1",
        isCompleted: true, notes: "VStack and Text.")
}
