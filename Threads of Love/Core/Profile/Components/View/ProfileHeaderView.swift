//
//  ProfileHeaderView.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                // fullname and username
                VStack(alignment: .leading, spacing: 4) {
                    Text(user.fullname)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(user.username)
                        .font(.subheadline)
                }
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                Text("2 followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            CircularProfileImageView()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: dev.user)
    }
}
