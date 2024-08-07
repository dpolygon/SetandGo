//
//  SwiftUIView.swift
//  hmwrk3
//
//  Created by Daniel Gonzalez on 8/7/24.
//  with the help of Béz Editor
//

import SwiftUI

struct Squiggle: Shape {
    func path(in rect: CGRect) -> Path {
        let w = rect.width
        let h = rect.height
        var path = Path()
        path.move(to: CGPoint(x: 0.047*w, y: 0.287*h))
        path.addCurve(to: CGPoint(x: 0.503*w, y: 0.165*h),
                      control1: CGPoint(x: 0.164*w, y: -0.154*h),
                      control2: CGPoint(x: 0.344*w, y: 0.003*h))
        path.addQuadCurve(to: CGPoint(x: 0.846*w, y: 0.086*h),
                          control: CGPoint(x: 0.665*w, y: 0.334*h))
        path.addCurve(to: CGPoint(x: 0.782*w, y: 0.963*h),
                      control1: CGPoint(x: 1.051*w, y: -0.232*h),
                      control2: CGPoint(x: 1.073*w, y: 0.944*h))
        path.addCurve(to: CGPoint(x: 0.200*w, y: 0.833*h),
                      control1: CGPoint(x: 0.511*w, y: 0.972*h),
                      control2: CGPoint(x: 0.348*w, y: 0.501*h))
        path.addCurve(to: CGPoint(x: 0.057*w, y: 0.253*h),
                      control1: CGPoint(x: 0.001*w, y: 1.335*h),
                      control2: CGPoint(x: -0.055*w, y: 0.578*h))
        return path
    }
}
