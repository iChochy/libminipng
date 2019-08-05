# libminipng
通过lodepng解析png图片，使用pngquant算法进行压缩的swift库 libminipng



libminipng.framework

import libminipng


        let path:String = "/Users/mleo/Downloads/Cloud.png"
        let data:Data? = minipng.path2Data(path)
