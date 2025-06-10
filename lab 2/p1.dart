import 'dart:io';
void main()
{
  print('Enter the number of elements:');
  int n=int.parse(stdin.readLineSync()!);
  List<int> number=[];
  for (int i=0;i<n;i++)
  {
    print('Enter number ${i+1}:');
    int num=int.parse(stdin.readLineSync()!);
    number.add(num);
  }
  int evencount = 0;
  int oddcount = 0;
  for(int i in number)

  {
    if(i%2==0)
    {
      evencount++;
    }
    else
    {
      oddcount++;
    }
  }
  print('number of odd number: $oddcount');
  print('number of even number: $evencount');
}
