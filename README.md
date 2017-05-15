# JJCircleTransition
圆形自定义转场

##使用方法
1. 在要推出的控制器中引入头文件 

```
#import "JJCircleTransition.h"
```


2. 添加一个对应对象
```
@property(nonatomic , strong) JJCircleTransition *  circleTransition;
```
3. 在控制器被初始化的时候设置转场为自定义,并且设置转场代理
```
//设置转场的样式为自定义
self.modalPresentationStyle = UIModalPresentationCustom;
//对象进行初始化(参数1:圆心位置 参数2:初始圆半径);
_circleTransition = [[JJCircleTransition alloc]initWithArcCenter:CGPointMake([UIScreen mainScreen].bounds.size.width - 30, 30) cornerRadius:15];
//设置转场代理
self.transitioningDelegate = _circleTransition;
```
