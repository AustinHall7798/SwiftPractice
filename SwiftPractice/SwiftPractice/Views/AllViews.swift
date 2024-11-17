//
//  ViewWrapper.swift
//  SwiftPractice
//
//  Created by Austin Hall on 9/9/23.
//

import SwiftUI

enum AllViews: CaseIterable, Identifiable {
    case form, scroll, text
    
    var id: Self { self }
    
    @ViewBuilder var view: some View {
        switch self {
        case .form:
            ComponentWrapper(destination: FormView())
        case .scroll:
            ComponentWrapper(destination: ScrollView())
        case .text:
            ComponentWrapper(destination: TextView())
        }
    }
}
