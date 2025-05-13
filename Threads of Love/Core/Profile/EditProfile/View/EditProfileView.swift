//
//  EditProfileView.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import SwiftUI

struct EditProfileView: View {
    let user: User
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    
    var body: some View {
        AppBackground {
            NavigationStack {
                ZStack {
                    Color(.systemGroupedBackground)
                        .ignoresSafeArea(edges: [.bottom, .horizontal])
                    VStack {
                        // name and profile image
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Name")
                                    .fontWeight(.semibold)
                                Text(user.fullname)
                            }
                            Spacer()
                            CircularProfileImageView()
                        }
                        Divider()
                        // bio field
                        VStack(alignment: .leading) {
                            Text("Bio")
                                .fontWeight(.semibold)
                            TextField("Enter your bio...", text: $bio, axis: .vertical)
                        }
                        Divider()
                        VStack(alignment: .leading) {
                            Text("Bio")
                                .fontWeight(.semibold)
                            TextField("Add link...", text: $link)
                        }
                        Divider()
                        Toggle("Private profile", isOn: $isPrivateProfile)
                    }
                    .font(.footnote)
                    .padding()
                    .cornerRadius(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    }
                    .padding()
                }
                .navigationTitle("Edit Profile")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            
                        }
                        .font(.subheadline)
                        .foregroundColor(.black)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done") {
                            
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(user: dev.user)
    }
}
