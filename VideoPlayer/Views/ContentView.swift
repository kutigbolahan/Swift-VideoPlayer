//
//  ContentView.swift
//  VideoPlayer
//
//  Created by GB on 1/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                ForEach(Query.allCases, id: \.self){
                    searchQuery in QueryTag(query: searchQuery, isSelected: false)
                }
            }
        }.background(Color("AccentColor"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
