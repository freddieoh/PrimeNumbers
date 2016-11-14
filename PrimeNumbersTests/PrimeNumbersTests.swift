//
//  PrimeNumbersTests.swift
//  PrimeNumbersTests
//
//  Created by Fredrick Ohen on 11/9/16.
//  Copyright © 2016 geeoku. All rights reserved.
//

import XCTest
@testable import PrimeNumbers

class PrimeNumbersTests: XCTestCase {
    
    var primeNumber: PrimeNumber!
    
    override func setUp() {
        super.setUp()
            primeNumber = PrimeNumber()
        }

    func testToSeeNumberIsPrime() {
        
        let number: Int = 2
        XCTAssertTrue(primeNumber.isNumberPrime(numberInput: number), "Is A Prime Number")
        
    }
    
    func testToSeeIsNotPrime() {
        let number: Int = 6
        XCTAssertTrue(primeNumber.isNumberPrime(numberInput: number), "Is Not A Prime Number")
    }



}
