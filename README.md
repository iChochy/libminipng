# libminipng
通过lodepng解析png图片，使用pngquant算法进行压缩的swift-framework


### 方法说明：

```swift
/// 通过PNG图片Data压缩
///
/// - Parameters:
///   - data: PNG图片Data
///   - maximum: 压缩率，0-100,100为最好
/// - Returns: 压缩后的PNG图片Data
public static func data2Data(_ data:Data,_ maximum:Int) -> Data?
```

```swift
/// 通过PNG图片路径压缩
///
/// - Parameters:
///   - path: PNG图片路径
///   - maximum: 压缩率，0-100,100为最好
/// - Returns: 压缩后的PNG图片Data
public static func path2Data(_ path:String,_ maximum:Int) -> Data?
```


### Cocoapods

**Podfile 添加 `pod "libminipng"`**

**运行命令  `pod install`**


### 使用

 **引入 `import libminipng`**

**编写代码：**

```swift
let path:String = "http://images.chochy.cn/Cloud.png"
let data:Data = try! Data.init(contentsOf: URL.init(string: path)!)
let maximum:Int = 100 // 压缩率，0-100,100为最好
let result:Data? = minipng.data2Data(data,maximum)
try! result?.write(to: URL.init(fileURLWithPath: "/Users/mleo/minipng.png"))
```

```swift
let path:String = "/Users/mleo/Cloud.png"
let maximum:Int = 100 // 压缩率，0-100,100为最好
let result:Data? = minipng.path2Data(path, maximum)
try! result?.write(to: URL.init(fileURLWithPath: "/Users/mleo/minipng.png"))
```

---  
### GitHub:  
libminipng: https://github.com/iChochy/libminipng  
pngquant: https://github.com/ImageOptim/libimagequant  
lodepng: https://github.com/lvandeve/lodepng

---
### 联系方系：  
> 邮箱：[iChochy@qq.com](mailto:iChochy@qq.com)   
> 网站：[http://www.ichochy.com](http://www.ichochy.com)  
> GitHub： [https://github.com/iChochy]( https://github.com/iChochy)   

