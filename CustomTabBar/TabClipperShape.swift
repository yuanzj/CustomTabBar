//
//  TabClipperShape.swift
//  CustomTabBar
//
//  Created by 袁志健 on 2022/3/26.
//

import SwiftUI

struct TabClipperShape: Shape {
    
    var radius = 38.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let v = radius * 2
        
        path.move(to: CGPoint(x: 0, y: 0))
        
        path.addArc(center: CGPoint(x: radius/2, y: radius/2), radius: radius/2, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 180+90), clockwise: false)
        
        path.addArc(center: CGPoint(x: ((rect.size.width / 2) - radius) - radius + v * 0.04 + radius/2, y: radius/2), radius: radius/2, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 270+70), clockwise: false)
        
        path.addArc(center: CGPoint(x: rect.size.width / 2, y: 0), radius: v/2, startAngle: Angle(degrees: 160), endAngle: Angle(degrees: 20), clockwise: true)
        
        path.addArc(center: CGPoint(x: (rect.size.width - ((rect.size.width / 2) - radius)) - v * 0.04 + radius/2, y: radius/2), radius: radius/2, startAngle: Angle(degrees: 200), endAngle: Angle(degrees: 200+70), clockwise: false)
        
        path.addArc(center: CGPoint(x: rect.size.width - radius/2, y: radius/2), radius: radius/2, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 270+90), clockwise: false)
        
        path.addLine(to: CGPoint(x: rect.size.width, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
        path.addLine(to: CGPoint(x: 0, y: rect.size.height))

        return path
    }
}

struct TabClipperShape_Previews: PreviewProvider {
    static var previews: some View {
        TabClipperShape()
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .padding(.horizontal, 16)
    }
}
