//
//  MapView.swift
//  JRNL
//
//  Created by 차지용 on 5/28/24.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        Text("Map")
    }
}

#Preview {
    MapView()
        .modelContainer(for: JournalEntry.self)
}
