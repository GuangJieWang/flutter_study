/*
 * 创建作者: 王广杰
 * 创建日期: 2018/8/12 15:48
 * ****************************************************
 * 更改记录: 更新人:    更新时间:    更新概要:
 *
 * ****************************************************
 *  类功能说明:
 * ****************************************************/
void main() {
  var func = () {
    print("Hello");
  };
  var func2 = (str) {
    print("Hello=>$str");
  };
  func();
  func2(666);

  var list2 = ['H', 'E', 'L', 'L', 'O'];
//  var result = listTimes(list2, (str) {
//    return str * 3;
//  });
//  print(result);
print(listTimes2(list2));
}

List listTimes(List list, String times(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = times(list[index]);
  }
  return list;
}

List listTimes2(List list) {
  var func = (str) {
    return str * 3;
  };
  for (var index = 0; index < list.length; index++) {
    list[index] = func(list[index]);
  }
  return list;
}
