//
//  ViewContents.swift
//  SwiftPractice
//
//  Created by Austin Hall on 9/10/23.
//

import SwiftUI

protocol CustomProtocol {
    func getViewContent() -> String
    func getLabelIcon() -> String
}

extension CustomProtocol {
    func asCustomView() -> some View {
        return CustomView()
    }
}
