//
//  AddJournalEntryView.swift
//  JRNL
//
//  Created by 차지용 on 5/28/24.
//

import SwiftUI

struct AddJournalEntryView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            Text("Add JournalEntry")
                .navigationTitle("Add Journal Entry")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Save") {
                            dismiss()
                        }
                    }
                }
        }
    }
}

#Preview {
    AddJournalEntryView()
}
