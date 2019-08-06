# libminipng
通过lodepng解析png图片，使用pngquant算法进行压缩的swift库 libminipng

### 使用方法

1、生成`libminipng.framework`
2、引入`libminipng.framework`
3、编写代码：
```
        import libminipng
        let path:String = "/Users/mleo/Downloads/Cloud.png"
        let data:Data? = minipng.path2Data(path)
```

