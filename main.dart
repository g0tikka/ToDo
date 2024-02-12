import 'todolist.dart';
import 'dart:io';

void main() {
  ToDoList toDoList = ToDoList();
  print('To view command options print h');
  while (true) {
    Map<int, String> commandOptions = {
      1: "Add new task",
      2: "Delete task",
      3: "View my tasks",
      4: "Exit",
    };

    String? typed = stdin.readLineSync();
    switch (typed) {
      case 'h':
        print(commandOptions);
        print('Type the command');
        continue;
      case '1':
        print('Type task you would like to do');
        String? task = stdin.readLineSync();
        toDoList.addTask(task);
      case '2':
        if (toDoList.myTasks.isEmpty) {
          toDoList.viewTasks();
          continue;
        } else {
          print('Which task would you like to delete?');
          toDoList.viewTasks();
          int index = int.parse(stdin.readLineSync()!);
          toDoList.removeTask(index);
        }
      case '3':
        if (toDoList.myTasks.isEmpty) {
          toDoList.viewTasks();
        } else {
          print('Your tasks');
          toDoList.viewTasks();
        }

      case '4':
        return;
    }
  }
}
