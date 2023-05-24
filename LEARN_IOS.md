# Objc基础

- 相关资料作为参考，可以自行选择学习资料，覆盖到知识点即可

## 1. 学习 Objective-C 基本语法

> 参考资料: 《Objective-C编程》第3-12章、第42章
> 
- 基本类型: short,int,long,float,double,BOOL,指针,结构
- 控制流程: if-else, 三元运算符?:, Switch
- 函数: 局部变量,帧,栈,堆,作用域,递归,局部,全局变量,静态变量
- 循环流程: while,for,break,continue,do-while
- 常量: #define,枚举,option《Objective-C编程》第25章
- 格式化输出: printf [NSLog](https://developer.apple.com/documentation/foundation/1395275-nslog)

## 2.类与对象

> 参考资料: 《Objective-C编程》第13-22章
> 
- 类([Class](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/DefiningClasses/DefiningClasses.html#//apple_ref/doc/uid/TP40011210-CH3-SW2)): 声明类,方法和消息,类方法与实例方法
- 消息: 错误消息,多个实参,alloc&init,向nil发送消息
- 自定义类: 存取方法,self指针,申明属性,继承Super,Description
- 属性修饰符: nonatomic, nullable, readwrite, copy, assign, strong, weak
- 常用类: NSObject,NSString,NSNumber
- 常用集合([Collection](https://developer.apple.com/documentation/foundation/collections?language=objc)):NSArray,NSDictionary,NSSet,集合遍历,拷贝,作为参数传递
- 类拓展([Extension](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjectiveC/Chapters/ocCategories.html#//apple_ref/doc/uid/TP30001163-CH20-SW2)): 隐藏可变属性,头文件与继承
- 分类([Category](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjectiveC/Chapters/ocCategories.html#//apple_ref/doc/uid/TP30001163-CH20-TPXREF139)): 分类划分《Effective Objective-C》第4章,《Objective-C编程》第37章
- 协议([Protocol](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjectiveC/Chapters/ocProtocols.html#//apple_ref/doc/uid/TP30001163-CH15-SW1)): 匿名对象
- [KVC](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/KeyValueCoding/index.html) & [KVO](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/KeyValueObserving/KeyValueObserving.html) : 《Objective-C编程》第35、36章

## 3.内存管理

> 参考资料: 《Objective-C编程》第12、15、23章, 《Effective Objective-C》第6章
> 
- 手动引用计数:(了解即可)
- 自动引用计数(ARC): 工作原理,AutoReleasePool
- 变量的内存管理语义:__strong, __unsafe_unretained,__weak,__autoreleasing
- 强引用循环: 可能场景: KVO, dealloc, 回调(CallBack), Collection, Property, Exception
- 弱引用: 解开强引用循环

## 4.回调

> 参考资料: 《Objective-C编程》第27章
> 
- 目标-动作对([Target-Action](https://developer.apple.com/library/archive/documentation/General/Conceptual/CocoaEncyclopedia/Target-Action/Target-Action.html#//apple_ref/doc/uid/TP40010810-CH12-SW1)): 1个对象1个回调, NSTimer
- 辅助对象([Delegation](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/Delegation.html)): 1个对象多个回调 [Delegate, DataSource](https://developer.apple.com/library/archive/documentation/General/Conceptual/CocoaEncyclopedia/DelegatesandDataSources/DelegatesandDataSources.html#//apple_ref/doc/uid/TP40010810-CH11-SW1)
- 通知([Notifications](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/Notification.html#//apple_ref/doc/uid/TP40008195-CH35-SW1)): 多个对象多个回调
- 回调与对象所有权: 避免强引用循环

## 5.Block

> 参考资料: 《Objective-C编程》第8章, 《Effective Objective-C》第5章37-40条
> 
- Block定义、使用、传递: [Syntax](http://fuckingblocksyntax.com/)
- Block内存管理: 保留环, __block
- Block的实现(可选):《Objective-C高级编程》第2章

官方文档:

- [Working With Block](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/WorkingwithBlocks/WorkingwithBlocks.html#//apple_ref/doc/uid/TP40011210-CH8-SW1)
- [Block Programming Topic](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Blocks/Articles/00_Introduction.html#//apple_ref/doc/uid/TP40007502-CH1-SW1)

## 6.多线程相关知识

> 《Objective-C高级编程》第3章，《Effective Objective-C》第6章40-46条
> 
> 
> [Concurrency Programming Guide](https://developer.apple.com/library/archive/documentation/General/Conceptual/ConcurrencyProgrammingGuide/Introduction/Introduction.html)
> 
- Dispatch Queue:串行队列,并行队列
- Main Dispatch Queue / Global Dispatch Queue: 执行优先级
- dispatch_after:指定时间后追加到队列
- dispatch Group:多任务结束后追加到队列, dispatch_group_notify, dispatch_group_wait
- dispatch _sync:同步调动, 死锁
- dispatch_once:单例

### 参考资料

1. 书籍
> 点击下载
* [objective-c编程 第2版](https://github.com/baochuquan/Books/blob/master/ProgrammingLanguage/Objective-C/Objective-C%E7%BC%96%E7%A8%8B%EF%BC%88%E7%AC%AC2%E7%89%88%EF%BC%89.pdf)
* [iOS编程 第四版](https://github.com/NicholasBxt/FreeBook/blob/master/%E3%80%8AiOS%E7%BC%96%E7%A8%8B%EF%BC%88%E7%AC%AC4%E7%89%88%EF%BC%89%E3%80%8B.pdf)
* [Effective Objective-C](https://github.com/iOSwang/BOOK/blob/master/Effective%20Objective-C%202.0%20%20%E7%BC%96%E5%86%99%E9%AB%98%E8%B4%A8%E9%87%8FiOS%E4%B8%8EOS%20X%E4%BB%A3%E7%A0%81%E7%9A%8452%E4%B8%AA%E6%9C%89%E6%95%88%E6%96%B9%E6%B3%95.pdf)
* [Objective-C高级编程iOS与OS+X多线程和内存管理.pdf](https://github.com/baochuquan/Books/blob/master/ProgrammingLanguage/Objective-C/Objective-C%E9%AB%98%E7%BA%A7%E7%BC%96%E7%A8%8B_iOS%E4%B8%8EOSX%E5%A4%9A%E7%BA%BF%E7%A8%8B%E5%92%8C%E5%86%85%E5%AD%98%E7%AE%A1%E7%90%86.pdf)


2. 链接
* Apple 官方: [The Objective-C Programming Language](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjectiveC/Introduction/introObjectiveC.html)

* Apple 官方: [Programming With Objective-C](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html#//apple_ref/doc/uid/TP40011210-CH1-SW1)

* Apple 官方: [Concurrency Programming Guide](https://developer.apple.com/library/archive/documentation/General/Conceptual/ConcurrencyProgrammingGuide/Introduction/Introduction.html)