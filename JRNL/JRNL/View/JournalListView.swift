//
//  JournalListView.swift
//  JRNL
//
//  Created by 차지용 on 5/28/24.
//

import SwiftUI
let testData: [JournalEntry] = [
    JournalEntry(date: Date(), rating: 5, entryTitle: "Today is a good day", entryBody: "It was a sunny day...", photo: UIImage(systemName: "photo")!, latitude: nil, longitude: nil),
]
struct JournalListView: View {
    var journalEntries: [JournalEntry] = testData
    var body: some View {
        List (journalEntries) { journalEntry in
            HStack {
                Image(uiImage: journalEntry.photo ?? UIImage(systemName: "face.smiling")!)
                    .resizable()
                    .frame(width: 90, height: 90)
                VStack {
                    Text(journalEntry.date.formatted(.dateTime.day().month().year()))
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Today is a good day")
                        .font(.title2)
                        .foregroundStyle(.secondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
    }
}

#Preview {
    JournalListView()
}
