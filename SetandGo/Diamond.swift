//
//  SwiftUIView.swift
//  hmwrk3
//
//  Created by Daniel Gonzalez on 8/7/24.
//

import SwiftUI

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX,
                             y: rect.midY)
        let start = CGPoint(x: rect.minX,
                            y: center.y)
        let diamondTop = CGPoint(x: center.x,
                                 y: rect.minY)
        let diamondRight = CGPoint(x: rect.maxX,
                                   y: center.y)
        let diamondBottom = CGPoint(x: center.x,
                                    y: rect.maxY)
        
        var path = Path()
        path.move(to: start)
        path.addLine(to: diamondTop)
        path.addLine(to: diamondRight)
        path.addLine(to: diamondBottom)
        path.addLine(to: start)
        path.addLine(to: diamondTop)
        path.closeSubpath()
        return path
    }
}
