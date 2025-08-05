class Student{
  int? studentID;
  String? studentName;
  String? studentRollNo;
  String? className;

  Student(
      {
        this.studentName,
        this.studentRollNo,
        this.className,
      }
      );
  Map<String,dynamic> toMap(){
    return {
      "studentName" : studentName,
      "studentRollNo" : studentRollNo,
      "className" : className,
    };
  }
  factory Student. fromMap(Map<String,dynamic>map){
    return Student(
      studentName: map["studentName"],
      studentRollNo: map["studentRollno"],
      className: map["className"],
    );
  }
}