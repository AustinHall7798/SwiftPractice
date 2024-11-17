//
//  FormView.swift
//  SwiftPractice
//
//  Created by Austin Hall on 9/4/23.
//

import SwiftUI

struct FormView: View, Identifiable, CustomProtocol {
    let id = UUID()
    
    var body: some View {
        HStack {
            Image(systemName: "note.text")
            Text("Form View")
        }
    }
    
    func getViewContent() -> String {
        "Form Components"
    }
    
    func getLabelIcon() -> String {
        "note.text"
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
