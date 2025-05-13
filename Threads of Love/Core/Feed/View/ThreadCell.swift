//
//  ThreadCell.swift
//  Threads of Love
//
//  Created by Adzter on 5/10/25.
//

import SwiftUI

struct ThreadCell: View {
    let thread: Thread
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView()
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(thread.user?.username ?? "")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .motherlyText()
                        Spacer()
                        Text(thread.timestamp.dateValue(), style: .time)
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                            .motherlyText()
                        Button {
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                        .buttonStyle(MotherlyButtonStyle())
                    }
                    Text(thread.caption)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .motherlyText()
                    
                    HStack(spacing: 16) {
                        Button {
                        } label: {
                            Image(systemName: "heart")
                        }
                        .buttonStyle(MotherlyButtonStyle())
                        
                        Button {
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        .buttonStyle(MotherlyButtonStyle())
                        
                        Button {
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        .buttonStyle(MotherlyButtonStyle())
                        
                        Button {
                        } label: {
                            Image(systemName: "paperplane")
                        }
                        .buttonStyle(MotherlyButtonStyle())
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                }
            }
            
            Divider()
            
        }
        .padding()
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell(thread: dev.thread)
    }
}
