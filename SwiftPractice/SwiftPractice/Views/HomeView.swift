//
//  HomeView.swift
//  SwiftPractice
//
//  Created by Austin Hall on 9/4/23.
//

import SwiftUI

struct HomeView: View {
    @State private var formView = FormView()
    @State private var scrollView = ScrollView()
    @State private var textView = TextView()
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: formView) {
                    Text(formView.getViewContent())
                }
                
                NavigationLink(destination: scrollView) {
                    Text(scrollView.getViewContent())
                }
                
                NavigationLink(destination: textView) {
                    Text(textView.getViewContent())
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
