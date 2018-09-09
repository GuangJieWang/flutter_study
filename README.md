# flutter_study
flutter学习笔记（基础语法、第三方库等）
##一、 基础语法
### 1 变量与常量(var_and_const.dart)

var：

```dart
var a;
print(a);
a = 10;
print(a);
a = 'Hello World!';
print(a);
var b = 20;
print(b);
final c = 20;
c = '';//A value of type 'String' can't be assigned to a variable of type 'int'.
c = 40;//a final variable ,can only be set once.
```

const//常量定义

```dart
const d = 20;
d = 40;// Constant variable can't be assigned a value.
```

### 2 数值型

number：

```dart
num a = 10;
a = 12.5;
int b = 20;
//b = 20.5;//A value of type 'double' can't be assigned to a variable of type'int'.
double c = 10.5;
//c = 30;//A value of type 'int' can't be assigned to a variable of type 'double'.
```

数值型操作：(+、-、*、/、~/(取整)、%)  NaN、isEven、isOdd、abs、round()、floor()、ceil()

```dart
num a = 101;
num b = 20;
print(a+b);//121
print(a-b);//81
print(a*b);//2020
print(a/b);//5.05
print(a~/b);//5
print(a%b);//1
print(0.0/0.0)//NaN
print(b.isEven)//是否为偶数
print(b.isOdd)//是否为奇数
```


1. whats app demo

# Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
