//
//  ExploreView.swift
//  Threads of Love
//
//  Created by Adzter on 5/10/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        AppBackground {
            NavigationStack {
                ScrollView {
                    LazyVStack {
                        ForEach(viewModel.users) { user in
                            NavigationLink(value: user) {
                                VStack {
                                    UserCell(user: user)
                                    Divider()
                                }
                                .padding(.vertical, 4)
                            }
                        }
                    }
                }
                .navigationDestination(for: User.self, destination: { user in
                    ProfileView(user: user)
                })
                .navigationTitle("Search")
                .searchable(text: $searchText, prompt: "Search")
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
