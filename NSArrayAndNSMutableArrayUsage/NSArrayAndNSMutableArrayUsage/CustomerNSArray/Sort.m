//
//  Sort.m
//  NSArrayAndNSMutableArrayUsage
//
// github地址:https://github.com/Jerryisme/UIButtonEdgeInsets
// 简书地址:https://www.jianshu.com/p/d319c13d5ee1
// 简书个人主页:https://www.jianshu.com/u/281c41cc90bc

#import "Sort.h"

@implementation Sort


+ (Sort *)sortAlloc {
    Sort * sort1 = [[Sort alloc] init];
    return sort1;
}

//- (NSComparisonResult)compare:(NSString *)string;
// compare:方法用于比较字符串并排序
- (NSComparisonResult)myCompare:(Sort *)sort {
    
    return [self.name compare:sort.name];
}

// 该方法用来排序数字
- (NSComparisonResult)myCompare2:(Sort *)sort {
    
    if ( self.number  > sort.number ) {
        return NSOrderedDescending;
    } else if (self.number < sort.number ) {
        return NSOrderedAscending;
    } else {
        return NSOrderedSame;
    }
}

@end
