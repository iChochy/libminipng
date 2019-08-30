//
//  libminipngTests.swift
//  libminipngTests
//
//  Created by MLeo on 2019/8/9.
//  Copyright © 2019 iChochy https://www.ichochy.com/. All rights reserved.
//

import XCTest
import libminipng

class libminipngTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let path:String = "http://images.chochy.cn/Cloud.png"
        let data:Data = try! Data.init(contentsOf: URL.init(string: path)!)
        let maximum:Int = 100 // 压缩率，0-100,100为最好
        let result:Data? = minipng.data2Data(data,maximum)
        try! result?.write(to: URL.init(fileURLWithPath: "/Users/mleo/minipng.png"))

        
//        let path:String = "/Users/mleo/Cloud.png"
//        let maximum:Int = 100 // 压缩率，0-100,100为最好
//        let result:Data? = minipng.path2Data(path, maximum)
//        try! result?.write(to: URL.init(fileURLWithPath: "/Users/mleo/minipng.png"))
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
