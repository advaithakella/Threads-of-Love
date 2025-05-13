//
//  Activity.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        AppBackground {
            NavigationStack {
                ScrollView(showsIndicators: false) {
                    LazyVStack {
                        ForEach(0 ..< 10, id: \.self) { notification in
                            ActivityCell()
                        }
                    }
                }
                .navigationTitle("Activity")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
