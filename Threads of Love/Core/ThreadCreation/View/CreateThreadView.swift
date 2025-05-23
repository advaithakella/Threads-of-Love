//
//  CreateThreadView.swift
//  Threads of Love
//
//  Created by Adzter on 5/10/25.
//

import SwiftUI

struct CreateThreadView: View {
    @State private var caption = ""
    @StateObject var viewModel = CreateThreadViewModel()
    @Environment(\.dismiss) var dismiss
    
    private var user: User? {
        return UserService.shared.currentUser
    }
    
    var body: some View {
        AppBackground {
            NavigationStack {
                VStack {
                    HStack(alignment: .top) {
                        CircularProfileImageView()
                        VStack(alignment: .leading, spacing: 4) {
                            Text(user?.username ?? "")
                                .fontWeight(.semibold)
                            TextField("Start a thread...", text: $caption, axis: .vertical)
                        }
                        .font(.footnote)
                        Spacer()
                        if !caption.isEmpty {
                            Button {
                                caption = ""
                            } label: {
                                Image(systemName: "xmark")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("New Thread")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                        .font(.subheadline)
                        .foregroundColor(.black)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Post") {
                            Task { try await viewModel.uploadThread(caption: caption)}
                        }
                        .opacity(caption.isEmpty ? 0.5 : 1.0)
                        .disabled(caption.isEmpty)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CreateThreadView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThreadView()
    }
}
