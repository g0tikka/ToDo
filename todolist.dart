class ToDoList {
  List<String> myTasks = [];

  addTask(String? task) {
    task = task ?? '';
    myTasks.add(task);
    print('New task added');
  }

  removeTask(int index) {
    if (index >= 1 && index <= myTasks.length) {
      myTasks.removeAt(index - 1);
      print('Task deleted');
    } else {
      print('Failed');
    }
  }

  viewTasks() {
    if (myTasks.isEmpty) {
      print('No tasks have been added. Choose another command.');
    } else if (myTasks.isNotEmpty) {
      for (int i = 0; i < myTasks.length; i++) {
        print('${i + 1} ${myTasks[i]}');
      }
    }
  }
}
