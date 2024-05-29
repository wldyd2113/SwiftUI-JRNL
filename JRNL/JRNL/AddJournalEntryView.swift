//
//  AddJournalEntryView.swift
//  JRNL
//
//  Created by 차지용 on 5/28/24.
//

import SwiftUI
import CoreLocation


struct AddJournalEntryView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    
    @StateObject private var locationManager = LocationManager()
    @State private var rating = 0
    @State private var isGetLocationOn = false
    @State private var locationLabel = "Get Location"
    @State private var currentLocation: CLLocation?
    @State private var entryTitle = ""
    @State private var entryBody = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Rating")) {
                    RatingView(rating: $rating)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                Section(header: Text("Location")) {
                    Toggle("Get Location", isOn: $isGetLocationOn)
                }
                
                Section(header: Text("Title")) {
                    TextField("Enter title", text: $entryTitle)
                        .onChange(of: isGetLocationOn) {
                            if isGetLocationOn {
                                locationLabel = "Get Location..."
                                locationManager.requestLocation()
                            }
                            else {
                                locationLabel = "Get Location"
                            }
                        }
                        .onReceive(locationManager.$location) { location in
                            if isGetLocationOn {
                                currentLocation = location
                                locationLabel = "Done"
                            }
                        }
                }
                
                Section(header: Text("Body")) {
                    TextEditor( text: $entryBody)
                }
                
                Section(header: Text("PHOTO")) {
                    
                }
            }
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
                            let journalEntry = JournalEntry(rating: 3, entryTitle: entryTitle, entryBody: entryBody, latitude: currentLocation?.coordinate.latitude, longitude: currentLocation?.coordinate.longitude)
                            modelContext.insert(journalEntry)
                        }
                    }
                }
        }
    }
}

#Preview {
    AddJournalEntryView()
        .modelContainer(for: JournalEntry.self)

}
