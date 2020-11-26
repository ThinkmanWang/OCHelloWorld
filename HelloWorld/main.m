//
//  main.m
//  HelloWorld
//
//  Created by 王晓丰 on 2020/11/24.
//

#include <stdio.h>
#include <stdlib.h>

#import <Foundation/Foundation.h>
#include "thinkutils/data_type/ThinkList.h"
#include "thinkutils/log/log.h"

void func1() {
    int* pA = malloc(sizeof(int));
    *pA = 123;
    printf("%d\n", *pA);
    
    think_free(pA);
}

void func2(NSString* pszTxt) {
    NSLog(pszTxt);
}

void list_test() {
    //init list
    ThinkList* pList = NULL;
    for (int i = 0; i < 10; ++i) {
        int* pItem = malloc(sizeof(int));
        *pItem = i;
        
        pList = think_list_append(pList, pItem);
    }
    
    for (int i = 0; i < think_list_length(pList); ++i) {
        int* pItem = think_list_get(pList, i);
        NSLog(@"%d", *pItem);
        log_info("%d", *pItem);
    }
    
    think_list_free(&pList, free);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        func1();
        func2(@"Hello World");
        list_test();
    }
//    @autoreleasepool {
//        // insert code here...
//        NSString* anotherString = [NSString stringWithFormat:@"%d %s", 1, "String"];
//        NSLog(anotherString);
//
//
//    }
    return 0;
}
