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
            List(AllViews.allCases) {
                $0.view
            }
            .navigationBarTitle(Text("Components"), displayMode: .inline)
            .listStyle(.inset)
            .toolbar {
                NavigationLink {
                    SettingsView()
                } label: {
                    Image(systemName: "gearshape.fill")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
