//
//  CustomView.swift
//  SwiftPractice
//
//  Created by Austin Hall on 9/10/23.
//

import SwiftUI

struct CustomView: View {
    let imageName: String
    let viewContent: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(viewContent)
        }
    }
}

struct CustomView_Previews: PreviewProvider {
    static var formView = FormView()
    static var previews: some View {
        CustomView(imageName: formView.getLabelIcon(), viewContent: formView.getViewContent())
    }
}
