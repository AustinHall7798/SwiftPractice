//
//  ScrollView.swift
//  SwiftPractice
//
//  Created by Austin Hall on 9/4/23.
//

import SwiftUI

struct ScrollView: View, Identifiable, ViewContents {
    let id = UUID()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func getViewContent() -> String {
        "Scroll Components"
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView()
    }
}
