import 'todolist.dart';
import 'dart:io';

void main() {
  ToDoList toDoList = ToDoList();

  while (true) {
    if (toDoList.myTasks.isNotEmpty) {
      print('1 - ADD TASK, 2 - REMOVE TASK, 3 - VIEW MY TASKS, 4 - EXIT');
    } else {
      print('1 - ADD TASK, 4 - EXIT');
    }

    String? typed = stdin.readLineSync();
    switch (typed) {
      case '1':
        String? task = stdin.readLineSync();
        toDoList.addTask(task);
      case '2':
        print('WHICH TASK WOULD YOU LIKE TO DELETE?');
        toDoList.viewTasks();
        int index = int.parse(stdin.readLineSync()!);
        toDoList.removeTask(index);
      case '3':
        toDoList.viewTasks();
      case '4':
        exit;
    }
  }
}
