//
//  random_intel.m
//  learn_obj-c
//
//  Created by menangen on 26.08.14.
//  Copyright (c) 2014 menangen. All rights reserved.
//
#import <Foundation/Foundation.h>

int rdrand16_step(uint16_t *rand)

{
    
    asm volatile ("rdrand %0" : "=r" (*rand));
    
    return 1;
}

unsigned int get_random(int min, int max) {
    uint16_t seed;
    rdrand16_step(&seed);
    //NSLog(@"[%i]", seed % 3 + 1);    
    return seed % max + min;
}