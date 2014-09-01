//
//  structs.m
//  learn_obj-c
//
//  Created by menangen on 26.08.14.
//  Copyright (c) 2014 menangen. All rights reserved.
//

#import <Foundation/Foundation.h>

void structs() {
    struct s
    {
        char *A;
        uint32_t B;
        int C;
    };
    
    struct s test[5];
    test[0].A = "Hello";
    test[0].B = 12345;
    test[0].C = -7;
    unsigned char *pointer, variable;
    variable = 100;
    pointer = &variable;
    
    
    struct user {
        int score;
    };
    
    typedef struct {
        int age;
    } admin;
    
    struct user menangen = {10};
    admin menan = {12};
    
    
    NSLog(@"%i", menangen.score);
    NSLog(@"%i", menan.age);

    
    NSMutableArray *array = [NSMutableArray arrayWithObjects: @"Menangen", @12, nil];
    
    const int width = 4;
    
    unsigned char type[][width] = {{0x23, 0x24, 0x25, 0x26}, {0x11, 0x12, 0x15, 0x22}};
    unsigned char perlin_noise[2][4] = {{0x23, 0x24, 0x25, 0x26}, {0x11, 0x12, 0x15, 0x22}};
    
    NSLog(@"[%x]", type[0][0]);
    //NSLog(@"Selected a %@", getRandomMake());
    NSLog(@"Username=%s", test[0].A);
    NSLog(@"Score=%@", array[1]);
    NSLog(@"Array length=%lu", [array count]);
    
    NSLog(@"<%d>", (int)perlin_noise[0][0]);

    
    unsigned char PERMUT[6];
    
    int max_random;
    unsigned int random_int;
    const unsigned int size_permutation = 6;
    
    sranddev();
    
    for (int counter = 0; counter < size_permutation / 2; counter++) {
        
        max_random = 256;
        random_int = rand() % max_random;
        
        PERMUT[counter] = random_int;
        PERMUT[size_permutation / 2 + counter] = random_int;
        
    }
    
    NSLog(@"Size of array is [%lu]", sizeof(PERMUT));
    NSLog(@"First element = [%d]", PERMUT[0]);
    NSLog(@"Second element = [%d]", PERMUT[1]);
    NSLog(@"Third element = [%d]", PERMUT[2]);
    NSLog(@"Last element = [%d]", PERMUT[3]);
    NSLog(@"Last element = [%d]", PERMUT[4]);
    NSLog(@"Last element = [%d]", PERMUT[5]);
}
