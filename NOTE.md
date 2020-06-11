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