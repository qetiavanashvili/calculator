//
//  CalculatorEnginePinPadTests.swift
//  CalcTests
//
//  Created by iOSBFree on 15/02/2022.
//
//
//  iOSBFree Ltd                     β All rights reserved
//  Website                         β https://www.iosbfree.com
//
//  π Free Courses                 β https://www.udemy.com/user/iosbfree
//
//  YouTube                         β https://www.youtube.com/channel/UCWBUOVRbtKNml4jN_4bRkCQ
//  Linked In                       β http://www.linkedin.com/in/mattharding-iosbfree
//
//  Tell us what
//  you want to learn
//
//  π iOSBFree
//  community@iosbfree.com
//  π§π»π¨πΏβπΌπ©πΌβπΌπ©π»βπ»π¨πΌβπΌπ§π»ββοΈπ©πΌβπ»ππ½ββοΈπ΅π»ββοΈπ§πΌββοΈπ¦ΉπΌββπ§πΎπ§ββοΈ
// *******************************************************************************************
//
// β What's This File?
//   It's our testing team! They are testing our math!
//
// *******************************************************************************************


import XCTest
@testable import Calc

class CalculatorEnginePinPadTests: XCTestCase {

    func testLargePinPadNumbersWithAddition() throws {
        
        for lhsPinPadNumber in 0...9 {
            for rhsPinPadNumber in 0...9 {
                var calculatorEngine = CalculatorEngine()
                
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.addPressed()
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.equalsPressed()
                
                let lhs = (lhsPinPadNumber * 10 * 10 * 10) + (lhsPinPadNumber * 10 * 10) + (lhsPinPadNumber * 10) + lhsPinPadNumber
                let rhs = (rhsPinPadNumber * 10 * 10 * 10) + (rhsPinPadNumber * 10 * 10) + (rhsPinPadNumber * 10) + rhsPinPadNumber
                let expectedResult = lhs + rhs
                XCTAssertTrue(calculatorEngine.lcdDisplayText == expectedResult.formatted())
            }
        }
    }
    
    func testLargePinPadNumbersWithSubtraction() throws {
        
        for lhsPinPadNumber in 0...9 {
            for rhsPinPadNumber in 0...9 {
                var calculatorEngine = CalculatorEngine()
                
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.minusPressed()
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.equalsPressed()
                
                let lhs = (lhsPinPadNumber * 10 * 10 * 10) + (lhsPinPadNumber * 10 * 10) + (lhsPinPadNumber * 10) + lhsPinPadNumber
                let rhs = (rhsPinPadNumber * 10 * 10 * 10) + (rhsPinPadNumber * 10 * 10) + (rhsPinPadNumber * 10) + rhsPinPadNumber
                let expectedResult = lhs - rhs
                XCTAssertTrue(calculatorEngine.lcdDisplayText == expectedResult.formatted())
            }
        }
    }
    
    func testLargePinPadNumbersWithMultiplication() throws {
        
        for lhsPinPadNumber in 0...9 {
            for rhsPinPadNumber in 0...9 {
                var calculatorEngine = CalculatorEngine()
                
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.multiplyPressed()
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.equalsPressed()
                
                let lhs = (lhsPinPadNumber * 10 * 10 * 10) + (lhsPinPadNumber * 10 * 10) + (lhsPinPadNumber * 10) + lhsPinPadNumber
                let rhs = (rhsPinPadNumber * 10 * 10 * 10) + (rhsPinPadNumber * 10 * 10) + (rhsPinPadNumber * 10) + rhsPinPadNumber
                let expectedResult = lhs * rhs
                XCTAssertTrue(calculatorEngine.lcdDisplayText == expectedResult.formatted())
            }
        }
    }

    func testLargePinPadNumbersWithDivision() throws {
        
        for lhsPinPadNumber in 0...9 {
            for rhsPinPadNumber in 1...9 {
                var calculatorEngine = CalculatorEngine()
                
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.dividePressed()
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.equalsPressed()
                
                let lhs = (lhsPinPadNumber * 10 * 10 * 10) + (lhsPinPadNumber * 10 * 10) + (lhsPinPadNumber * 10) + lhsPinPadNumber
                let rhs = (rhsPinPadNumber * 10 * 10 * 10) + (rhsPinPadNumber * 10 * 10) + (rhsPinPadNumber * 10) + rhsPinPadNumber
                let expectedResult = Decimal(lhs) / Decimal(rhs)
                XCTAssertTrue(calculatorEngine.lcdDisplayText == expectedResult.formatted())
            }
        }
    }
}
