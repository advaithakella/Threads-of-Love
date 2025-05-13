//
//  ContentView.swift
//  Threads of Love
//
//  Created by Adzter on 5/10/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        AppBackground {
            Group {
                if viewModel.userSession != nil {
                    ThreadsTabView()
                } else {
                    LoginView()
                }
            }
            .motherlyText()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
