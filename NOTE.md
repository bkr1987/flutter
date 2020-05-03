## 解决下载缓慢问题
｀
➜  ~ export PUB_HOSTED_URL=https://pub.flutter-io.cn
➜  ~ export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
｀
[笔记-Flutter开发环境搭建Mac版](https://juejin.im/post/5c2da9d3f265da6167207075)

## 获取Flutter SDK
* 1. 下载解压
* 2. 添加flutter相关工具到path中：
｀export PATH=`pwd`/flutter/bin:$PATH｀
[https://flutterchina.club/setup-macos/](https://flutterchina.club/setup-macos/)
* 3. 添加环境变量
｀export PATH=/Users/Bao/Desktop/Flutter/flutter/bin:$PATH｀
* 4. CocoaPods升级
```
更新第三方库时，提示我版本太低

查看当前cocoapods 版本

pod --version

发现我当前版本为1.5.3，于是我去更新cocoapods

sudo gem update cocoapods

报错

ERROR:Whileexecuting gem ... (Gem::RemoteFetcher::FetchError) bad response Not Found404(https://gems.ruby-china.org/specs.4.8.gz)

原因：https://gems.ruby-china.org 服务域名更换了org变成com

移除gem源

gem sources --remove https://gems.ruby-china.org/

修改gem源

gem sources -a https://gems.ruby-china.com

升级cocoapods

sudo gem install -n /usr/local/bin cocoapods --pre

再次查看版本
pod --version

```
## git项目上传
```
git remote add origin https://github.com/bkr1987/flutter.git

git checkout -b universe

git status

git add .

git commit -m "初始化"

git push

git push --set-upstream origin universe
```