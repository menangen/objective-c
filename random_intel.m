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

static void testing() {
    static int random_integer;
    static int array[5];
    
    for (short i = 0; i<100; i++) {
        random_integer = get_random(0, 5);
        array[random_integer] += 1;
    }
    
    for (int i = 0; i < 5; i++) {
        NSLog(@"%i:%i", i, array[i]);
    }
}