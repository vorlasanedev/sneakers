import 'package:sneakers/features/todo/domain/entities/todo.dart';
import 'package:sneakers/features/todo/shared/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class TodoRepository {
  Future<Either<Failure, Todo>> addTodo(Todo todo);

  // Edit TODO
  Future<Either<Failure, Todo>> editTodo(Todo todo);

  // Delete TODO
  Future<Either<Failure, Todo>> deleteTodo(Todo todo);

  // Get all TODOs
  Future<Either<Failure, List<Todo>>> getAllTodos();
}
