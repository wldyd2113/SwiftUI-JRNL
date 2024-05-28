//
//  JournalEntryDetail.swift
//  JRNL
//
//  Created by 차지용 on 5/28/24.
//

import SwiftUI
import MapKit

struct JournalEntryDetail: View {
    var selectedJournalEntry: JournalEntry
    var body: some View {
        ScrollView {
            VStack {
                Spacer().frame(height: 30)
                Text(selectedJournalEntry.date.formatted(.dateTime.day().month().year()))
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Spacer().frame(height: 30)
                Text(selectedJournalEntry.entryBody)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Spacer().frame(height: 30)
                Image(uiImage: selectedJournalEntry.photo ?? UIImage(systemName: "face.smiling")!)
                    .resizable()
                    .frame(width: 300, height: 300)
                Spacer().frame(height: 30)
                MapView(JournalEntry: selectedJournalEntry)
                    .frame(width: 300, height: 300)
                
            }.padding()
                .navigationTitle("Entry Detail")
        }
    }
}

#Preview {
    NavigationView{
        JournalEntryDetail(selectedJournalEntry: testData[0])
    }
}
