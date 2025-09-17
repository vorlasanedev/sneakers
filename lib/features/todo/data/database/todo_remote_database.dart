import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sneakers/features/todo/domain/entities/todo.dart';

abstract class TodoRemoteDatabase {
  Future<Todo> addTodoRemote(Todo todo);
  Future<Todo> editTodoRemote(Todo todo);
  Future<Todo> deleteTodoRemote(Todo todo);
  Future<List<Todo>> listTodoRemote();
}

@override
Future<Todo> addTodoRemote(Todo todo) async {
  await FirebaseFirestore.instance
      .collection('todos')
      .doc(todo.id)
      .set(todo.toMap());
  return todo;
}

Future<Todo> editTodoRemote(Todo todo) async {
  await FirebaseFirestore.instance
      .collection('todos')
      .doc(todo.id)
      .update(todo.toMap());
  return todo;
}

Future<Todo> deleteTodoRemote(Todo todo) async {
  await FirebaseFirestore.instance.collection('todos').doc(todo.id).delete();
  return todo;
}

Future<List<Todo>> listTodoRemote() async {
  final todosData = await FirebaseFirestore.instance.collection('todos').get();
  return todosData.docs.map((item) => Todo.fromMap(item.data())).toList();
}
