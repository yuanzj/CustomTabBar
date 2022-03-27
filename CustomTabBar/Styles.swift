//
//  Styles.swift
//  CustomTabBar
//
//  Created by 袁志健 on 2022/3/26.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
            .stroke(.linearGradient(colors: [.white.opacity(0.3), .black.opacity(0.1)], startPoint: .top, endPoint: .bottom))
            .blendMode(.overlay))
    }
}


extension View {
    func strokeStyle() -> some View {
        modifier(StrokeStyle())
    }
}
