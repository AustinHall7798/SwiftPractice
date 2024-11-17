//
//  ComponentWrapper.swift
//  SwiftPractice
//
//  Created by Austin Hall on 9/9/23.
//

import SwiftUI

struct ComponentWrapper: View {
    let destination: CustomView
    
    var body: some View {
        NavigationLink(destination: destination) {
            Label {
                Text(destination.getViewContent())
            }
        icon: {
            Image(systemName: destination.getLabelIcon())
        }
        }
    }
}

struct ComponentWrapper_Previews: PreviewProvider {
    static var previews: some View {
        ComponentWrapper(destination: FormView())
    }
}
