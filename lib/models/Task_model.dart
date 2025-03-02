//get task

class TaskModel {
  final int id;
  final String task_name;
  final String created_at;
  final String status;

  TaskModel({
    required this.id,
    required this.task_name,
    required this.created_at,
    required this.status,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      task_name: json['task_name'],
      created_at: json['created_at'],
      status: json['status'],
    );
  }
}

//post task
class Task {
  final String user_id;
  final String description;
  final String task_name;
  final String todos;
  String? image;

  Task(
      {required this.user_id,
      required this.task_name,
      required this.description,
      required this.todos,
      this.image});

  Map<String, dynamic> toJson() {
    return {
      'user_id': user_id,
      'description': description ?? "description",
      'task_name': task_name,
      'todos[0]': todos ?? " todos",
      'image': image ?? "noImage"
    };
  }
}

class TaskDetails {
  final int id;
  final String task_name;
  final List<Todo> to_do;
  final String description;
  final User user;

  TaskDetails(
      {required this.id,
      required this.task_name,
      required this.user,
      required this.description,
      required this.to_do});

  factory TaskDetails.fromJson(Map<String, dynamic> json) {
    var todo = json['to_do'] as List;
    List<Todo> toDoItems = todo.map((i) => Todo.fromJson(i)).toList();
    return TaskDetails(
      id: json['id'],
      task_name: json['task_name'],
      description: json['description'],
      user: User.fromJson(json['user']),
      to_do: toDoItems,
    );


  }
}

class User {
  final int id;
  final String first_name;
  final String last_name;
  final String birthday;
  final String specialist;

  User({
    required this.id,
    required this.first_name,
    required this.birthday,
    required this.last_name,
    required this.specialist,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      first_name: json['first_name'],
      birthday: json['birthday'],
      last_name: json['last_name'],
      specialist: json['specialist'],
    );
  }
}

class Todo {
  final int id;
  final int task_id;
  final String title;
  final String created_at;
  final String updated_at;

  Todo({
    required this.id,
    required this.task_id,
    required this.created_at,
    required this.updated_at,
    required this.title,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      task_id: json['task_id'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
      title: json['title'],
    );
  }
}


