//
//  sse_avx.m
//  learn_obj-c
//
//  Created by menangen on 26.08.14.
//  Copyright (c) 2014 menangen. All rights reserved.
//
#include <Accelerate/Accelerate.h> // AVX
#import <Foundation/Foundation.h>

__m128 HADDPS(__m128 __X, __m128 __Y)
{
    return _mm_hadd_ps (__X, __Y);
}

void test_sse() {
    __m128 HADDPSA = _mm_set_ps(1.0f, 5.0f, 6.0f, 7.0f);
    __m128 HADDPSB = _mm_set_ps(1.0f, 3.0f, 2.0f, 4.0f);
    __m128 HADDPSR = HADDPS(HADDPSA, HADDPSB);
    
    __m128 ADDPSR = _mm_add_ps(HADDPSA, HADDPSB);
    
    for (unsigned char x = 0; x < 4; x++) {
        NSLog(@"value is: %f", HADDPSR[x]);
    }
    
    printf("\n");
    
    for (unsigned char x = 0; x < 4; x++) {
        NSLog(@"value is: %f", ADDPSR[x]);
    }
}