class Task {
  int id;
  String task;
  String info;
  Task({required this.id, required this.task, required this.info});

  Map<String, dynamic> toMap() {
    return {'id': id, 'task': task, 'info': info};
  }

  @override
  String toString() {
    return "Task{id: $id, task: $task, info: $info}";
  }
}


