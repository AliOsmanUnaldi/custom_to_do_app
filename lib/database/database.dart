import 'package:hive/hive.dart';

class Database{

  List toDoList = [];

  //reference box
  final _myBox = Hive.box("mybox");

  void createInitalData(){
    toDoList = [
      ["Do Exercise", false],
      ["Read book", false]
    ];
  }

  void get(){
    toDoList = _myBox.get("TODOLIST");
  }

  void update(){
    _myBox.put("TODOLIST", toDoList);
  }

}