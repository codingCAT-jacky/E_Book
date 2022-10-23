//
//  ContentView.swift
//  E_Book
//
//  Created by User21 on 2022/10/23.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            NavigationView{
                VStack{
                    NavigationLink(destination: page1View(), label: {
                        Text("Hello World123")
                        
                    })
//                    NavigationLink("對的時間點", destination: page1View())
//                        .font(.largeTitle)
//                        .foregroundColor(.red)
                    
                        Image("clock1")
                            .resizable()
                        .scaledToFit()
                    
                }
            .navigationBarTitle("is that you?")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
