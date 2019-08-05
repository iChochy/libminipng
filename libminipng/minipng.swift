//
//  minipng.swift
//  libminipng
//
//  Created by MLeo on 2019/8/5.
//  Copyright © 2019年 iChochy http://www.chochy.cn/. All rights reserved.
//

import Cocoa

public class minipng{
    
public static func path2Data(_ path:String) -> Data?{
        let buffer = UnsafeMutablePointer<Int8>(mutating: (path as NSString).utf8String)
        var data:UnsafeMutablePointer<UInt8>? = UnsafeMutablePointer.allocate(capacity: 0)
        let count:Int = Int(_data(buffer, &data))
        if count == 0 {
            return nil;
        }
        return Data(bytes: data!, count: count);
    }

}
