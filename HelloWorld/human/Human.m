//
//  Human.m
//  HelloWorld
//
//  Created by 王晓丰 on 2020/11/26.
//

#import "Human.h"
#import <Foundation/Foundation.h>


@implementation Human

-(id) init {
    return [self initWithArgs:0 nWeight:0];
}

-(id) initWithArgs: (int) nHeight nWeight:(int) nWeight {
    self = [super init];
    if (self) {
        m_nHeight = nHeight;
        m_nWeight = nWeight;
    }
    
    return self;
}

-(NSString*) toString {
    NSString* pTxt = [NSString stringWithFormat:@"Height: %d Weight: %d", m_nHeight, m_nWeight];
    return pTxt;
}

-(NSString*) help {
    return @"@#$%^&*()";
}

+(void) classMethod {
    NSLog(@"a class method");
}

@end
