import 'package:flutest/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/Dash.png', 3),
    Task('Andar de Bike', 'assets/images/bike.jpg', 4),
    Task('Viajar', 'assets/images/viajar.jpg', 3),
    Task('Meditar', 'assets/images/meditar.jpg', 2),
    Task('Ler', 'assets/images/ler.jpg', 1),
    Task('Escrever', 'assets/images/escrever.png', 2),
    Task('Desenhar', 'assets/images/desenhar.jpg', 5),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
