//
//  main.m
//  learn_obj-c
//
//  Created by menangen on 25.04.14.
//  Copyright (c) 2014 menangen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "random_intel.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"[%i]", get_random(1, 10));
        
    }
    
    return 0;
}

