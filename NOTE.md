## 项目开发
> 运行 source $HOME/.bash_profile 刷新当前终端窗口.
* 1. 新建项目
`flutter create blog`
* 2. 开启模拟器
> open －a simulator
* 3. Dart编程枚举[语法]
```
enum enum_name {
    enumeration list
}
> enum_name 指定枚举类型名称
> enumeration list 是一个逗号分隔的标识符的列表
```
* 4. GlobalKey
[Flutter | 深入浅出Key](https://juejin.im/post/5ca2152f6fb9a05e1a7a9a26)

* 5. obscureText
[Flutter TextField详解](https://juejin.im/post/5b6bdb406fb9a04f89785cb5)

* 6. MainAxisAlignment
```
>> MainAxisAlignment：主轴方向上的对齐方式，会对child的位置起作用，默认是start。
其中MainAxisAlignment枚举值：

* center：将children放置在主轴的中心；
* end：将children放置在主轴的末尾；
* spaceAround：将主轴方向上的空白区域均分，使得children之间的空白区域相等，但是首尾child的空白区域为1/2；
* spaceBetween：将主轴方向上的空白区域均分，使得children之间的空白区域相等，首尾child都靠近首尾，没有间隙；
* spaceEvenly：将主轴方向上的空白区域均分，使得children之间的空白区域相等，包括首尾child；
* start：将children放置在主轴的起点；
```
[Flutter 布局- Row、Column详解](https://juejin.im/post/5b623d8c5188257f0b583c77)

* 7. EdgeInsets
```
>> fromLTRB(double left, double top, double right, double bottom)：分别指定四个方向的填充。
>> all(double value) : 所有方向均使用相同数值的填充。
>> only({left, top, right ,bottom })：可以设置具体某个方向的填充(可以同时指定多个方向)。
>> symmetric({ vertical, horizontal })：用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right。
```

## git项目上传
```
git remote add origin https://github.com/bkr1987/flutter.git

git checkout -b blog

git status

git add .

git commit -m "登录注册"

git push

git push --set-upstream origin blog
```