//
//  JournalListView.swift
//  JRNL
//
//  Created by 차지용 on 5/28/24.
//

import SwiftUI

struct JournalListView: View {
    var body: some View {
        List (0 ..< 5) { item in 
            HStack {
                Image(systemName: "face.smiling")
                    .resizable()
                    .frame(width: 90, height: 90)
                VStack {
                    Text("18 Aug 2023")
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
