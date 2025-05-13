//
//  CurrentUserProfileView.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import Foundation
import SwiftUI

struct CurrentUserProfileView: View {
    @StateObject var viewModel = CurrentUserProfileViewModel()
    @State private var showEditProfile = false
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    
    var body: some View {
        AppBackground {
            NavigationStack {
                ScrollView(showsIndicators: false) {
                    // bio and stats
                    VStack(spacing: 20) {
                        if let user = currentUser {
                            ProfileHeaderView(user: user)
                            Button {
                                
                            } label: {
                                Text("Edit Profile")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(width: 352, height: 32)
                                    // .background(.white) // Removed to allow gradient
                                    .cornerRadius(8)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color(.systemGray4), lineWidth: 1)
                                    }
                            }
                            UserContentListView(user: user)
                        }
                    }
                }
                .sheet(isPresented: $showEditProfile, content: {
                    if let user = currentUser {
                        EditProfileView(user: user)
                    }
                })
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            AuthService.shared.signOut()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
