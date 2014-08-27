//
//  memory_allocation2D_c.m
//  learn_obj-c
//
//  Created by menangen on 26.08.14.
//  Copyright (c) 2014 menangen. All rights reserved.
//

#import <Foundation/Foundation.h>

void memory_test() {
    
    unsigned char *char_array;
    char MAXELEMS = 3;
    
    char_array = (unsigned char*)calloc(MAXELEMS, sizeof(unsigned char));
    char_array[MAXELEMS - 1] = 5;
    
    for (unsigned char i=0; i < MAXELEMS; i++) {
        NSLog(@"[1D item: %i]", char_array[i]);
    }
    free(char_array);
    
    char width, height;
    width = 4;
    height = 2;
    
    printf("\n");
    
    unsigned char **perlin_noise;
    perlin_noise = (unsigned char**)calloc(height, sizeof(unsigned char*));
    
    for (unsigned char i = 0; i < height; i++)
    {
        perlin_noise[i] = (unsigned char*)calloc(width, sizeof(unsigned char));
    }
    
    perlin_noise[0][0] = 0xFF;
    perlin_noise[0][3] = 0x0B;
    perlin_noise[1][0] = 0xFF;
    perlin_noise[1][3] = 0x0B;
    
    unsigned char c;
    for (unsigned char i = 0; i < height; i++) {
        for (unsigned char j = 0; j < width; j++) {
            c = perlin_noise[i][j];
            NSLog(@"[2D item is: %i (0x%02X)]", c, c);
        }
    }
   

}