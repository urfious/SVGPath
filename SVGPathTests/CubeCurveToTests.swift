//
//  CubeCurveToTests.swift
//  SVGPath
//
//  Created by Tim Wood on 1/25/15.
//  Copyright (c) 2015 Tim Wood. All rights reserved.
//

import XCTest
import SVGPath

class CubeCurveToTests: XCTestCase {
//    func testSingleAbsoluteCurveTo() {
//        let actual:[SVGCommand] = SVGPath("C1 2 3 4 5 6").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(3.0, 4.0, 5.0, 6.0, 1.0, 2.0, type: .CubeCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testMultipleAbsoluteCurveTo() {
//        let actual:[SVGCommand] = SVGPath("C1 2 3 4 5 6 7 8 9 10 11 12C13 14 15 16 17 18").commands
//        let expect:[SVGCommand] = [
//            SVGCommand( 3.0,  4.0,  5.0,  6.0,  1.0,  2.0, type: .CubeCurve),
//            SVGCommand( 9.0, 10.0, 11.0, 12.0,  7.0,  8.0, type: .CubeCurve),
//            SVGCommand(15.0, 16.0, 17.0, 18.0, 13.0, 14.0, type: .CubeCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//
//    func testSingleRelativeCurveTo() {
//        let actual:[SVGCommand] = SVGPath("M8 6q1 2 3 4").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x: 8.0, y: 6.0), type: .Move),
//            SVGCommand(CGPoint(x: 11.0, y: 10.0), CGPoint(x: 9.0, y: 8.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testMultipleRelativeCurveTo() {
//        let actual:[SVGCommand] = SVGPath("M1 2q3 4 5 6 7 8 9 10q1 2 3 4").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(
//                CGPoint(x: 1.0,                   y: 2.0), type: .Move),
//            SVGCommand(
//                CGPoint(x: 1.0 + 5.0,             y: 2.0 + 6.0),
//                CGPoint(x: 1.0 + 3.0,             y: 2.0 + 4.0), type: .QuadCurve),
//            SVGCommand(
//                CGPoint(x: 1.0 + 5.0 + 9.0,       y: 2.0 + 6.0 + 10.0),
//                CGPoint(x: 1.0 + 5.0 + 7.0,       y: 2.0 + 6.0 + 8.0), type: .QuadCurve),
//            SVGCommand(
//                CGPoint(x: 1.0 + 5.0 + 9.0 + 3.0, y: 2.0 + 6.0 + 10.0 + 4.0),
//                CGPoint(x: 1.0 + 5.0 + 9.0 + 1.0, y: 2.0 + 6.0 + 10.0 + 2.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testSingleAbsoluteSmoothCurveTo() {
//        let actual:[SVGCommand] = SVGPath("Q1 2 3 4T7 8").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x: 3.0, y: 4.0), CGPoint(x: 1.0, y: 2.0), type: .QuadCurve),
//            SVGCommand(CGPoint(x: 7.0, y: 8.0), CGPoint(x: 5.0, y: 6.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testMultipleAbsoluteSmoothCurveTo() {
//        let actual:[SVGCommand] = SVGPath("Q1 2 3 4T1 2 3 4").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x: 3.0, y: 4.0), CGPoint(x: 1.0, y: 2.0), type: .QuadCurve),
//            SVGCommand(CGPoint(x: 1.0, y: 2.0), CGPoint(x: 5.0, y: 6.0), type: .QuadCurve),
//            SVGCommand(CGPoint(x: 3.0, y: 4.0), CGPoint(x:-3.0, y:-2.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testSingleRelativeSmoothCurveTo() {
//        let actual:[SVGCommand] = SVGPath("Q1 2 3 4t7 8").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x:  3.0, y:  4.0), CGPoint(x: 1.0, y: 2.0), type: .QuadCurve),
//            SVGCommand(CGPoint(x: 10.0, y: 12.0), CGPoint(x: 5.0, y: 6.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testMultipleRelativeSmoothCurveTo() {
//        let actual:[SVGCommand] = SVGPath("Q1 2 3 4t2 1 3 4").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x: 3.0, y: 4.0), CGPoint(x: 1.0, y: 2.0), type: .QuadCurve),
//            SVGCommand(CGPoint(x: 5.0, y: 5.0), CGPoint(x: 5.0, y: 6.0), type: .QuadCurve),
//            SVGCommand(CGPoint(x: 8.0, y: 9.0), CGPoint(x: 5.0, y: 4.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testAbsoluteSmoothToAfterMoveTo() {
//        let actual:[SVGCommand] = SVGPath("M1 2T3 4").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x: 1.0, y: 2.0), type: .Move),
//            SVGCommand(CGPoint(x: 3.0, y: 4.0), CGPoint(x: 1.0, y: 2.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testAbsoluteSmoothToAfterLineTo() {
//        let actual:[SVGCommand] = SVGPath("L1 2T3 4").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x: 1.0, y: 2.0), type: .Line),
//            SVGCommand(CGPoint(x: 3.0, y: 4.0), CGPoint(x: 1.0, y: 2.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    // TODO: func testAbsoluteSmoothToAfterCubicCurveTo() {}
//    
//    func testRelativeSmoothToAfterMoveTo() {
//        let actual:[SVGCommand] = SVGPath("M1 2t3 4").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x: 1.0, y: 2.0), type: .Move),
//            SVGCommand(CGPoint(x: 4.0, y: 6.0), CGPoint(x: 1.0, y: 2.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
//    
//    func testRelativeSmoothToAfterLineTo() {
//        let actual:[SVGCommand] = SVGPath("L1 2t3 4").commands
//        let expect:[SVGCommand] = [
//            SVGCommand(CGPoint(x: 1.0, y: 2.0), type: .Line),
//            SVGCommand(CGPoint(x: 4.0, y: 6.0), CGPoint(x: 1.0, y: 2.0), type: .QuadCurve)
//        ]
//        
//        assertCommandsEqual(actual, expect)
//    }
    
    // TODO: func testRelativeSmoothToAfterCubicCurveTo() {}
}