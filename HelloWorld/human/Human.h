//
//  Human.h
//  HelloWorld
//
//  Created by 王晓丰 on 2020/11/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject {
    int m_nHeight;
    int m_nWeight;
}

-(id) init ;
-(id) initWithArgs: (int) h nWeight:(int) w;
-(NSString*) toString;
-(NSString*) help;
+(void) classMethod;
@end

NS_ASSUME_NONNULL_END
