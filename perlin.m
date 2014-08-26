//
//  perlin.m
//  learn_obj-c
//
//  Created by menangen on 25.04.14.
//  Copyright (c) 2014 menangen. All rights reserved.
//

#import "perlin.h"

NSString *getRandomMake() {    
    unsigned int base, w_square;
    
    base = 7;
    w_square = 3;
    
    NSLog(@"Result x = [%d]", base % w_square);
    NSLog(@"Result y = [%d]", base / w_square);
    
    
    unsigned char area_width, area_height;
    char x, y;
    
    area_width = 200;
    area_height = 200;
    
    x = 1;
    y = -1;
    
    if ((area_width > x && x > -1) && (area_height > y && y > -1)) {
        NSLog(@"Now is okey!");
    }
    
    if ( (area_width > x > -1) && (area_height > y > -1) ) {
        NSLog(@"Now is okey!");
    }

    return @"Menangen";
}