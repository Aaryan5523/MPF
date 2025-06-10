import 'dart:io';

void main(){
  print('Enter a number of element : ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> number = [];
  for (int i = 0 ; i < n ; i++){
    print('Enter number ${i + 1}:');
    int num = int.parse(stdin.readLineSync()!);
    number.add(num);
  }
}