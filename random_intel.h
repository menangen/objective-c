//
//  random_intel.h
//  learn_obj-c
//
//  Created by menangen on 26.08.14.
//  Copyright (c) 2014 menangen. All rights reserved.
//

int rdrand16_step(uint16_t *rand);

unsigned int get_random();// NSLog(@"[%i]", get_random(1, 10));