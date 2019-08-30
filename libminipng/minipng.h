//
//  minipng.h
//  libminipng
//
//  Created by MLeo on 2019/8/5.
//  Copyright © 2019年 iChochy https://www.ichochy.com/. All rights reserved.
//

#ifndef minipng_h
#define minipng_h

#include <stdio.h>

unsigned long _data2Data(unsigned char **data,int maximum,unsigned char* png_data,size_t png_size);

unsigned long _path2Data(unsigned char **data,int maximum,char *png_path);

#endif /* minipng_h */
