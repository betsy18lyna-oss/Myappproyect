import '../models/student.dart';

class Database {

  static List<Student> students = [

    Student(name: "Juan Perez", paid: true, amount: 10),
    Student(name: "Maria Lopez", paid: false, amount: 0),
    Student(name: "Carlos Ruiz", paid: true, amount: 10),
    Student(name: "Ana Torres", paid: false, amount: 0),
    Student(name: "Luis Ramos", paid: true, amount: 10),

  ];

  static double totalMoney(){

    double total = 0;

    for(var s in students){

      total += s.amount;

    }

    return total;

  }

}