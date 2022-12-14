//
//  CalculatorEngineDivisionTests.swift
//  CalcTests
//
//  Created by iOSBFree on 15/02/2022.
//
//
//  iOSBFree Ltd                    β All rights reserved
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

class CalculatorEngineDivisionTests: XCTestCase {
    
    
    // MARK: - Homework Answers
    
    /*
     Video: Homework Answers

     1. Problems with the DivisionTests:
        a) Crashes
        b) Rounding issues when comparing values
        c) Do not test nans. Extract to their own class file
    */
    
    // MARK: - Equals Button
    
    func testPinPadNumberAndEquals() throws {
        // NOTE: We test dividing by zero in a separate Unit Test Case Class
        
        for lhsPinPadNumber in 0...9 {
            for rhsPinPadNumber in 1...9 {
                var calculatorEngine = CalculatorEngine()
                
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.dividePressed()
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.equalsPressed()
                
                XCTAssertTrue(calculatorEngine.lcdDisplayText == (Decimal(lhsPinPadNumber) / Decimal(rhsPinPadNumber)).formatted())
            }
        }
    }
    
    func testContinuousPinPadNumberAndEquals() throws {
        // NOTE: We test dividing by zero in a separate Unit Test Case Class
        
        var calculatorEngine = CalculatorEngine()
        
        for lhsPinPadNumber in 0...9 {
            for rhsPinPadNumber in 1...9 {
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.dividePressed()
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.equalsPressed()
                
                XCTAssertTrue(calculatorEngine.lcdDisplayText == (Decimal(lhsPinPadNumber) / Decimal(rhsPinPadNumber)).formatted())
            }
        }
    }
    
    // MARK: - Operation Buttons
    
    func testPinPadNumberAndOperation() throws {
        // NOTE: We test dividing by zero in a separate Unit Test Case Class
        
        for lhsPinPadNumber in 0...9 {
            for rhsPinPadNumber in 1...9 {
                var calculatorEngine = CalculatorEngine()
                
                calculatorEngine.pinPadPressed(lhsPinPadNumber)
                calculatorEngine.dividePressed()
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.dividePressed()
                
                XCTAssertTrue(calculatorEngine.lcdDisplayText == (Decimal(lhsPinPadNumber) / Decimal(rhsPinPadNumber)).formatted())
            }
        }
    }
    
    func testContinuousPinPadNumberAndOperation() throws {
        // NOTE: We test dividing by zero in a separate Unit Test Case Class
        
        for lhsPinPadNumber in 0...9 {
            var calculatorEngine = CalculatorEngine()
            calculatorEngine.pinPadPressed(lhsPinPadNumber)
            calculatorEngine.dividePressed()
            var result: Decimal = Decimal(lhsPinPadNumber)
            
            for rhsPinPadNumber in 1...9 {
                calculatorEngine.pinPadPressed(rhsPinPadNumber)
                calculatorEngine.dividePressed()
                result = result / Decimal(rhsPinPadNumber)
                XCTAssertTrue(calculatorEngine.lcdDisplayText == result.formatted())
            }
        }
    }
    
}
