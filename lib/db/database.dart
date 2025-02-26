import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  //reference the Hive box here

  final _myBox = Hive.box("mybox");

  List toDoList = [];

  //3 methods we need to initiate

  //run this method if this is the first time opening this app
  void createInitialData() {
    toDoList = [
      ["Home Work", false],
      ["DO Exercise", false],
    ];
  }

  //Load Data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
    print(toDoList);
  }

  //Update database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
