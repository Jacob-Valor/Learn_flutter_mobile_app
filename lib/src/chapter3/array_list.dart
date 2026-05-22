// ignore_for_file: avoid_print
// ignore_for_file: unused_local_variable
// ignore_for_file: strict_top_level_inference

// void main() {
//   var numbers = <int>[1, 2, 3, 4, 5];
//   numbers.add(6);
//   numbers[0] = 10;
//   for (var n in numbers) {
//     print(n);
//   }
// }

// void main() {
//   var cityList = <String>['Vientiane', 'Luang Prabang', 'Pakse'];
//   var citys = {'Vientiane', 'Luang Prabang', 'Pakse'};

//   cityList.add('Savannakhet');
//   citys.add('Savannakhet');
//   print(cityList);
//   print(citys);
// }

void main() {
  var citys = {'name': 'Bill', 'age': 30, 'city': 'Vientiane'};
  for (var c in citys.keys) {
    print(c);
  }
  for (var c in citys.entries) {
    print('${c.key}: ${c.value}');
  }
}
