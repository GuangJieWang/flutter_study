/*
 * 创建作者: 王广杰
 * 创建日期: 2018/8/12 15:24
 * ****************************************************
 * 更改记录: 更新人:    更新时间:    更新概要:
 *
 * ****************************************************
 *  类功能说明:
 * ****************************************************/
void main() {
  print_pserson("张三");
  print_pserson("张三", age: 40);
  print_pserson("张三", sex: true);
  print_pserson("张三", age: 45, sex: false);
  print_pserson2("李四");
  print_pserson2("李四", 30);
  print_pserson2("李四", 0,false);
  print_pserson2("李四", 30, false);
}

void print_pserson(String name, {int age = 20, bool sex = true}) {
  print("name = $name,age = $age,sex = $sex");
}

void print_pserson2(String name, [int age = 20, bool sex = true]) {
  print("name = $name,age = $age,sex = $sex");
}
