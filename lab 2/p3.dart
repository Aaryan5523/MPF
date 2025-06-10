import 'dart:io';
void main()
{
  print('Enter the number of elements:');
  int n = int.parse(stdin.readLineSync()!);
  List<String> number = [];
  for (int i = 0; i < n; i++)
  {
    print('Enter number ${i + 1}:');
    String num = stdin.readLineSync()!;
    number.add(num);
  }
  print("list : $number");
}