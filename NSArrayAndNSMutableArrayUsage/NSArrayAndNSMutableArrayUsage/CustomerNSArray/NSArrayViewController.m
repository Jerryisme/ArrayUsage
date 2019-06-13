//
//  NSArrayViewController.m
//  NSArrayAndNSMutableArrayUsage
//
// github地址:https://github.com/Jerryisme/UIButtonEdgeInsets
// 简书地址:https://www.jianshu.com/p/d319c13d5ee1
// 简书个人主页:https://www.jianshu.com/u/281c41cc90bc

#import "NSArrayViewController.h"

@interface NSArrayViewController ()

@end

@implementation NSArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 不可变数组
    [self setUpNSArray];
    
    // 可变数组
    [self setUpNSMutableArray];
}

#pragma mark - 不可变数组
- (void)setUpNSArray {
    // 创建空数组(基本没用过)
    NSArray *arr0 = [[NSArray alloc] init];
    NSLog(@"创建空数组---    %@\n", arr0);
    
    // 类方法创建空数组（常用）
    NSArray *arr1 = [NSArray array];
    NSLog(@"类方法创建空数组---    %@\n", arr1);
    
    // 对象方法创建数组，以nil结束
    NSArray *arr2 = [[NSArray alloc] initWithObjects:@"I", @"Love", @"U", nil];
    NSLog(@"对象方法创建数组，以nil结束---    %@\n", arr2);
    
    // 用已有数组创建新数组
    NSArray *arr3 = [[NSArray alloc] initWithArray:arr2];
    NSLog(@"用已有数组创建新数组---    %@\n", arr3);
    
    // 通过类方法创建数组
    NSArray *arr4 = [NSArray arrayWithArray:arr3];
    NSLog(@"通过类方法创建数组---    %@\n", arr4);
    
    // 数组中有多少个元素
    NSLog(@"数组中有多少个元素---    %ld\n", arr2.count);
    
#pragma mark - 不可变数组方法
    // 取一个元素
    NSString *str0 = [arr2 objectAtIndex:1];
    NSLog(@"取一个元素---    %@\n", str0);
    
    // 取一个元素（简写）
    NSString *str1 = arr2[0];
    NSLog(@"取一个元素（简写）---    %@\n", str1);
    
    // 取第一个元素
    NSString *str2 = [arr2 firstObject];
    NSLog(@"取第一个元素---    %@\n", str2);
    
    // 取最后一个元素
    NSString *str3 = [arr2 lastObject];
    NSLog(@"取最后一个元素---    %@\n", str3);
    
    // 截取多个元素
    // NSIndexSet:索引集合，与数组类似，无序
    NSIndexSet *set = [[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(1, 2)];
    NSArray *arr5 = [arr2 objectsAtIndexes:set];
    NSLog(@"截取多个元素---    %@\n", arr5);
    
    // 截取多个元素（）
    NSArray *arr6 = [arr2 subarrayWithRange:NSMakeRange(1, 2)];
    NSLog(@"截取多个元素（）---    %@\n", arr6);
}

#pragma mark - 可变数组
- (void)setUpNSMutableArray {
    NSMutableArray *mutableArr0 = [NSMutableArray array];
    NSLog(@"mutableArr0---    %@\n", mutableArr0);
    
    NSMutableArray *mutableArr1 = [NSMutableArray arrayWithObjects:@"I", @"Love", @"U", nil];
    NSLog(@"mutableArr1---    %@\n", mutableArr1);
    
    NSMutableArray *mutableArr2 = [[NSMutableArray alloc] initWithArray:@[@"I", @"Like", @"U"]];
    NSLog(@"mutableArr2---    %@\n", mutableArr2);
    
    NSMutableArray *mutableArr3 = [NSMutableArray arrayWithArray:mutableArr1];
    NSLog(@"mutableArr3---    %@\n", mutableArr3);
    
    //  初始化可变数组对象的长度,如果后面代码继续添加数组超过长度以后长度会自动扩充
    NSMutableArray *mutableArr4 = [NSMutableArray arrayWithCapacity:100];
    NSLog(@"mutableArr4---    %@\n", mutableArr4);
    
    // 需要自己release
    NSMutableArray *mutableArr5 = [[NSMutableArray alloc] initWithCapacity:100];
    NSLog(@"mutableArr5---    %@\n", mutableArr5);
    
#pragma mark - 增删改
    // 添加单个元素
    [mutableArr1 addObject:@"Forver"];
    NSLog(@"添加单个元素mutableArr1---    %@\n", mutableArr1);
    
    // 指定下标添加元素
    [mutableArr1 insertObject:@"TT" atIndex:0];
    NSLog(@"指定下标添加元素mutableArr1---    %@\n", mutableArr1);
    
    // 添加其他数组元素
    [mutableArr1 addObjectsFromArray:@[@"!", @"Do you Love me"]];
    NSLog(@"添加其他数组元素mutableArr1---    %@\n", mutableArr1);
    
    // 替换数组中的元素
    [mutableArr1 replaceObjectAtIndex:0 withObject:@"TWY"];
    NSLog(@"替换数组中的元素mutableArr1---    %@\n", mutableArr1);
    
    // 替换数组中某个范围(索引集合)的元素
    [mutableArr1 replaceObjectsAtIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(5, 2)] withObjects:@[@"Do you", @"love me"]];
    NSLog(@"替换数组中某个范围(索引集合)的元素mutableArr1---    %@\n", mutableArr1);
    
    // 取其他数组中的元素到当前数组（数组元素和替换元素个数必须相等）
    [mutableArr1 replaceObjectsInRange:NSMakeRange(5, 2) withObjectsFromArray:@[@"Can you", @"love me ?"]];
    NSLog(@"取其他数组中的元素到当前数组（数组元素和替换元素个数必须相等）mutableArr1---    %@\n", mutableArr1);
    
    // 取其他数组中的部分元素到当前数组（取出元素和替换元素个数必须相等）
    [mutableArr1 replaceObjectsInRange:NSMakeRange(5, 2) withObjectsFromArray:@[@"aa", @"aaa", @"Do you", @"love me ?", @"en heng"] range:NSMakeRange(2, 2)];
    NSLog(@"取其他数组中的部分元素到当前数组（取出元素和替换元素个数必须相等）mutableArr1---    %@\n", mutableArr1);
    
    // 交换数组中元素位置
    [mutableArr1 exchangeObjectAtIndex:0 withObjectAtIndex:4];
    NSLog(@"交换数组中元素位置mutableArr1---    %@\n", mutableArr1);
    
    // 删除某个元素（数组中含有多个相同元素，会全部删除）
    [mutableArr1 removeObject:@"Love"];
    NSLog(@"删除某个元素（数组中含有多个相同元素，会全部删除）mutableArr1---    %@\n", mutableArr1);
    
    // 删除最后一个元素
    [mutableArr1 removeLastObject];
    NSLog(@"删除最后一个元素mutableArr1---    %@\n", mutableArr1);
    
    // 删除指定下标元素
    [mutableArr1 removeObjectAtIndex:0];
    NSLog(@"删除某下标元素mutableArr1---    %@\n", mutableArr1);
    
    // 删除范围元素
    [mutableArr1 removeObjectsAtIndexes:[[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(1, 2)]];
    NSLog(@"删除范围元素mutableArr1---    %@\n", mutableArr1);
    
    // 全部删除
    [mutableArr1 removeAllObjects];
    NSLog(@"全部删除mutableArr1---    %@\n", mutableArr1);
    
#pragma mark - 倒序
    NSMutableArray *temp = [NSMutableArray arrayWithObjects:@"1", @"2", @"3", @"4", nil];
    temp = (NSMutableArray *)[[temp reverseObjectEnumerator] allObjects];
    NSLog(@"倒序---    %@\n", temp);
    
#pragma mark - 升序／降序（https://my.oschina.net/pengloo53/blog/173810）
    //通过自带的compare方法升序排列
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"377", @"27", @"1", @"4777", nil];
    [array sortUsingSelector:@selector(compare:)];
    NSLog(@"升序---    %@\n", array);
    //通过倒序的方法进行降序排列
    NSEnumerator *enumerator = [array reverseObjectEnumerator];
    array = [[NSMutableArray alloc] initWithArray:[enumerator allObjects]];
    NSLog(@"降序---    %@\n", array);
    
#pragma mark - for in 遍历数组
    //for in 遍历数组  数组中使用时，in的前面是数组中的元素，in后面是要遍历的集合
    for (NSString *str in array) {
        NSLog(@"遍历数组---    %@\n", str);
    }
    
    // 分隔字符串成数组
    [self componentsString];
    // 数组拼接成字符串
    [self arrayToString];
}

#pragma mark - 分隔字符串成数组
- (void)componentsString {
    NSString *str = @"Hello World and I Love You";
    // 以空格分隔字符串成数组
    NSArray *arr = [str componentsSeparatedByString:@" "];
    NSLog(@"arr---  %@,arr.count--- %lu\n",arr,(unsigned long)arr.count);
}

#pragma mark - 数组拼接成字符串
- (void)arrayToString {
    NSArray *array = [NSArray arrayWithObjects:@"I", @"LOVE", @"U", nil];
    // 用空格隔开数组中的元素
    NSString *str = [array componentsJoinedByString:@" "];
    NSLog(@"str---  %@\n",str);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
