//
//  Human.m
//  HelloWorld
//
//  Created by 王晓丰 on 2020/11/26.
//

#import "Human.h"

@implementation Human

-(id) init {
    return [self initWithArgs:0 nWeight:0];
}

-(id) initWithArgs: (int) h nWeight:(int) w {
    self = [super init];
    if (self) {
        m_nHeight = h;
        m_nWeight = w;
    }
    
    return self;
}

-(NSString*) toString {
    NSString* pTxt = [NSString stringWithFormat:@"Height: %d Weight: %d", m_nHeight, m_nWeight];
    return pTxt;
}

@end
