//
//  minipng.swift
//  libminipng
//
//  Created by MLeo on 2019/8/5.
//  Copyright © 2019年 iChochy https://www.ichochy.com/. All rights reserved.
//

//import Cocoa
public class minipng{
    
    
    /// 通过PNG图片Data压缩
    ///
    /// - Parameters:
    ///   - data: PNG图片Data
    ///   - quality: 压缩率，0-1, 1为最好
    /// - Returns: 压缩后的PNG图片Data
    public static func data2Data(_ data: Data, _ quality: Float) -> Data?{
        var mini:UnsafeMutablePointer<UInt8>? = UnsafeMutablePointer.allocate(capacity: 0)
        let pngData:UnsafeMutablePointer<UInt8> = UnsafeMutablePointer.allocate(capacity: data.count)
        data.copyBytes(to: pngData, count: data.count)
        
        let quality = Swift.max(1, Int32(quality * 100))

        let count:Int = Int(_data2Data(&mini, Int32(quality), pngData, data.count))
        if count == 0 {
            return nil;
        }
        let result =  Data(bytes: mini!, count: count);
        mini?.deinitialize(count: count)
        mini?.deallocate()
        return result;
    }
    
    
    /// 通过PNG图片路径压缩
    ///
    /// - Parameters:
    ///   - path: PNG图片路径
    ///   - maximum: 压缩率，0-100,100为最好
    /// - Returns: 压缩后的PNG图片Data
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
