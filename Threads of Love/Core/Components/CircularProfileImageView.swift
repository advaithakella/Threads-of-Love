//
//  CircularProfileImageView.swift
//  Threads of Love
//
//  Created by Adzter on 5/10/25.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("max-verstappen")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .scaledToFill() 
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
