//
//  ProfileView.swift
//  Threads of Love
//
//  Created by Adzter on 5/10/25.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        AppBackground {
            NavigationStack {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        ProfileHeaderView(user: user)
                        UserContentListView(user: user)
                    }
                }
                .navigationTitle(user.username)
                .navigationBarTitleDisplayMode(.inline)
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: dev.user)
    }
}
