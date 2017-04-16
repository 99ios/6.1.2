//
//  main.m
//  NSMutableString对象拷贝
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"NSMutableString对象复制");
        NSMutableString *string = [NSMutableString stringWithFormat:@"九九学院"];
        NSMutableString *string1 = [string copy];
        NSMutableString *string2 = [string mutableCopy];
        NSLog(@"对象类型：%@",[NSMutableString class]);
        NSLog(@"原对象指向的存储地址：%p",string);
        NSLog(@"使用copy方法得到的对象指向的存储地址：%p",string1);
        NSLog(@"使用mutableCopy方法得到的对象指向的存储地址：%p",string2);
        NSLog(@"结论：NSMutableString类使用copy为深复制, 使用mutableCopy为深复制");
    }
    return 0;
}
