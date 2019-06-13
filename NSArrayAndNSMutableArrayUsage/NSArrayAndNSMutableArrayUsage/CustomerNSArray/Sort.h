//
//  Sort.h
//  NSArrayAndNSMutableArrayUsage
//
// github地址:https://github.com/Jerryisme/UIButtonEdgeInsets
// 简书地址:https://www.jianshu.com/p/d319c13d5ee1
// 简书个人主页:https://www.jianshu.com/u/281c41cc90bc

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sort : NSObject {
    
}
// 为sort类声明一个name属性和一个number属性
@property (nonatomic, retain) NSString *name;
@property (nonatomic, assign) int number;

// 自定义一个myCompare: 方法，用来排序name字符串的顺序
- (NSComparisonResult)myCompare:(NSString *)name;

// 自定义一个myCompare2: 方法，用来排序number数字的顺序
- (NSComparisonResult)myCompare2:(Sort *)sort;

// 创建一个类方法，方便初始化对象
+ (Sort *)sortAlloc;


@end

NS_ASSUME_NONNULL_END
