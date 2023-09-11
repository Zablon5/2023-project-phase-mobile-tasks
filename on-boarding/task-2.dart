import 'dart:io';
class Task{
  String title;
  String description;
  DateTime duedate;
  String status;

  Task(this.title, this.description, this.duedate,this.status);
  

}

class TaskManager{
  
  List<Task> tasks=[];
  
  void addTask(Task task){
    tasks.add(task);
  }

  void viewAll() {
  print("''''''''list of all tasks'''''''");
  var i = 0;
  for (Task task in tasks) {
    print("${i + 1}...........");
    print('Title: ${task.title}');
    print('Description: ${task.description}');
    print('Due date: ${task.duedate}');
    print('Status: ${task.status}');
    print('............................');
    i += 1;
  }
}

void viewCompleted() {
  print("''''''''list of completed tasks'''''''");
  var i = 0;
  for (Task task in tasks) {
    if (task.status == 'completed') {
      print("${i + 1}...........");
      print('Title: ${task.title}');
      print('Description: ${task.description}');
      print('Due date: ${task.duedate}');
      print('Status: ${task.status}');
      print('............................');
      i += 1;
    }
  }
}

void viewpending() {
  print("''''''''list of pending tasks'''''''");
  var i = 0;
  for (Task task in tasks) {
    if (task.status == 'pending') {
      print("${i + 1}...........");
      print('Title: ${task.title}');
      print('Description: ${task.description}');
      print('Due date: ${task.duedate}');
      print('Status: ${task.status}');
      print('............................');
      i += 1;
    }
  }
}

  void editTask(int i,{String? title,String? description,DateTime?duedate,String? status}){
    if (i>=0 && i<tasks.length){
      if (title!=null) tasks[i].title=title;
      if (description!=null) tasks[i].description=description;
      if (duedate!=null) tasks[i].duedate=duedate;
      if (status!=null) tasks[i].status=status;
    } else print('The task manager is empty!');
  }
  void deleteTask(int i){
    if (i>=0 && i<tasks.length) tasks.removeAt(i);
    else print('The task manager is empty!');

  }
}

void main(List<String> args){
  List<Task> tasks=[];
  TaskManager taskManager=TaskManager();
  int command=1;
  print("......................Task Manager....................");
  while (true){
    print("---availabele options----");
    print('Enter 1 for Adding Task');
    print('Enter 2 for viewing Task');
    print('Enter 3 for Editing Task');
    print('Enter 4 for Deleting Task');
    print('Enter 0 for exiting');
    print('--------------');
    command=int.parse(stdin.readLineSync()!);
    if (command==1){
      print('Enter Title: ');
      String title=stdin.readLineSync()!;
      print('Enter task description: ');
      String description=stdin.readLineSync()!;
      DateTime duedate;
      while (true){
        print('enter the duedate in format yyyy-mm-dd. Example:2021-02-12 : ');
        String date=stdin.readLineSync()!;
        try{
          duedate=DateTime.parse(date);
          break;
        }
        catch (e){
          print("Invalid format.Try Again");
        }
         

      }
      print("enter status (completed or pending): ");
      String status=stdin.readLineSync()!;

      Task new_task=Task(title, description, duedate, status);
      taskManager.addTask(new_task);
      print("Success!");

    }else if (command==2){
      print("Enter a to view all tasks");
      print("Enter c to view completed tasks");
      print("Enter p to view pending tasks");
      String choice =stdin.readLineSync()!;
      if (choice == 'a') taskManager.viewAll();
      if (choice == 'c') taskManager.viewCompleted();
      if (choice == 'p') taskManager.viewpending();
      
    }
    else if (command == 3){
      print("enter the index of a task to be edited.(index starts from 0)");
      int i=int.parse(stdin.readLineSync()!);
      print('Enter title');
      String title = stdin.readLineSync()!;
      print('Enter description');
      String description = stdin.readLineSync()!;
      print('Enter due date(yyy-mm-dd)');
      DateTime dueDate = DateTime.parse(stdin.readLineSync()!);
      print('Enter status(pending/completed)');
      String status = stdin.readLineSync()!;
      taskManager.editTask(i,
          title: title,
          description: description,
          duedate: dueDate,
          status: status);

      print("success!");
    }else if (command==4){
      print("enter the index of a task to be deleted.(index starts from 0)");
      int i = int.parse(stdin.readLineSync()!);
      taskManager.deleteTask(i);
      print("success");


    }else break;

  }

}

