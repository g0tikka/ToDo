class ToDoList {
  List<String> myTasks = <String>[];

  addTask(String? task) {
    task = task ?? '';
    myTasks.add(task);
    print('TASK ADDED');
  }

  removeTask(int index) {
    if (index >= 1 && index <= myTasks.length) {
      myTasks.removeAt(index - 1);
      print('TASK DELETED');
    } else {
      print('FAILED');
    }
  }

  viewTasks() {
    if (myTasks.isEmpty) {
      print('NO TASKS ADDED');
    } else if (myTasks.isNotEmpty) {
      for (int i = 0; i < myTasks.length; i++) {
        print('${i + 1} ${myTasks[i]}');
      }
    }
  }
}
