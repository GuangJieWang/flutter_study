/*
 * 创建作者: 王广杰
 * 创建日期: 2018/8/12 15:34
 * ****************************************************
 * 更改记录: 更新人:    更新时间:    更新概要:
 *
 * ****************************************************
 *  类功能说明:
 * ****************************************************/
void main() {
  var func = printHello;
  func();
  var list = [1, 2, 3, 4];
  list.forEach(print);
  var list2 = ['H','E','L','L','O'];
  print(listTimes(list2, times));
}

void printHello() {
  print("Hello");
}

List listTimes(List list, String times(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = times(list[index]);
  }
  return list;
}

String times(str) {
  return str * 3;
}
