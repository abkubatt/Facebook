//
//  ViewOptionViewModifier.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct VideoOptionViewModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(Color(.darkGray))
    }
}

extension View {
    
    func view
}
