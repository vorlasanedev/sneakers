import 'package:sneakers/features/todo/domain/entities/todo.dart';

abstract class TodoRepository {
  // Add TODO
  Future<Todo> addTodo(Todo todo);

  // Edit TODO
  Future<Todo> editTodo(Todo todo);

  // Delete TODO
  Future<Todo> deleteTodo(Todo todo);

  // Get all TODOs
  Future<List<Todo>> getAllTodos();
}
