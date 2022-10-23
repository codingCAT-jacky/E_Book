//
//  page2View.swift
//  E_Book
//
//  Created by User21 on 2022/10/23.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI
import Foundation
struct page2View: View {
    func printFollow(){
        print("follow")
    }
    var body: some View {
         ZStack{
                   VStack{
                       Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                    Button(action: printFollow, label: {
                        Text("label")
                    })
                    Image(systemName: "square.and.arrow.up")
                           .resizable()
                           .scaledToFit()
                        .edgesIgnoringSafeArea(.all)
                       .navigationBarTitle("clock3")
                           .navigationBarTitle( "clock3", displayMode: .inline)
                   }
            
               }
    }
}

struct page2View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        page2View()
        }
    }
}
struct Book: Identifiable{
    let id = UUID()
    let name: String
    let author: String
}
