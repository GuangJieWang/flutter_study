/*
 * 创建作者: 王广杰
 * 创建日期: 2018/8/11 15:41
 * ****************************************************
 * 更改记录: 更新人:    更新时间:    更新概要:
 *
 * ****************************************************
 *  类功能说明:
 * ****************************************************/
void main() {
  num a = 101;
//  a = 20.2;
  int b = 20;
//  b = 10.2;
  double c = 20.0;
//  c = 10;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b);
  print(a % b);
  print(0.0/0.0);
  
  print(b.isEven);
  print(b.isOdd);
  double d = 10.5;
  print(d.ceil());

}
