//
//  FeedView.swift
//  Threads of Love
//
//  Created by Adzter on 5/10/25.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    var body: some View {
        AppBackground {
            NavigationStack {
                ScrollView(showsIndicators: false) {
                    LazyVStack {
                        ForEach(viewModel.threads) { thread in
                            ThreadCell(thread: thread)
                        }
                    }
                }
                .refreshable {
                    Task { try await viewModel.fetchThreads() }
                }
                .navigationTitle("Threads")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                        } label: {
                            Image(systemName: "arrow.counterclockwise")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
