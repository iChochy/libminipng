//
//  minipng.swift
//  libminipng
//
//  Created by MLeo on 2019/8/5.
//  Copyright © 2019年 iChochy http://www.chochy.cn/. All rights reserved.
//

import Cocoa

public class minipng{
    
    public static func data2Data(_ data:Data,_ maximum:Int) -> Data?{
        var mini:UnsafeMutablePointer<UInt8>? = UnsafeMutablePointer.allocate(capacity: 0)
        let pngData:UnsafeMutablePointer<UInt8> = UnsafeMutablePointer.allocate(capacity: data.count)
        data.copyBytes(to: pngData, count: data.count)
        let count:Int = Int(_data2Data(&mini,Int32(maximum),pngData,data.count))
        if count == 0 {
            return nil;
        }
        let result =  Data(bytes: mini!, count: count);
        mini?.deinitialize(count: count)
        mini?.deallocate()
        return result;
    }
    
    public static func path2Data(_ path:String,_ maximum:Int) -> Data?{
        var mini:UnsafeMutablePointer<UInt8>? = UnsafeMutablePointer.allocate(capacity: 0)
        let pngPath = UnsafeMutablePointer<Int8>(mutating: (path as NSString).utf8String)
        let count:Int = Int(_path2Data(&mini,Int32(maximum),pngPath))
        if count == 0 {
            return nil;
        }
        let result = Data(bytes: mini!, count: count);
        mini?.deinitialize(count: count)
        mini?.deallocate()
        return result;
    }

}
