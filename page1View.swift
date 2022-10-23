//
//  page1View.swift
//  E_Book
//
//  Created by User21 on 2022/10/23.
//  Copyright © 2022 jacky. All rights reserved.
//

import SwiftUI

struct page1View: View {
    var body: some View {
        ZStack{
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: page2View(), label: {
                    Text("wrong person")
                    
                })
                Image("clock2")
                    .resizable()
                    .scaledToFit()
                .navigationBarTitle("clock22")
                    .navigationBarTitle( "clock2", displayMode: .inline)
            }
        }
    }
}

struct page1View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        page1View()
        }
        
    }
}
