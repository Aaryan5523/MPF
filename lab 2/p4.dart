
import 'dart:io';
void main()
{
  print('Enter the number of elements:');
  int n = int.parse(stdin.readLineSync()!);
  List<double> list1 = [];
  for (int i = 0; i < n; i++)
  {
    print('Enter number ${i + 1}:');
    double num = double.parse(stdin.readLineSync()!);
    list1.add(num);
  }

  double sum=0;
  for (double i in list1)
  {
    sum+=i;
  }
  print(sum.toStringAsFixed(2));
}

