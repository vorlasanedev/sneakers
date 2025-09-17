import 'package:dartz/dartz.dart';
import 'package:sneakers/features/todo/domain/entities/todo.dart';
import 'package:sneakers/features/todo/domain/repositories/todo_repository.dart';
import 'package:sneakers/features/todo/data/database/todo_remote_database.dart';
import 'package:sneakers/features/todo/shared/errors/failure.dart';

class TodoRepositoryImpl implements TodoRepository {
  // access to remote database
  final TodoRemoteDatabase remoteDatabase;
  TodoRepositoryImpl({required this.remoteDatabase});

  @override
  Future<Either<Failure, Todo>> addTodo(Todo todo) async {
    try {
      final results = await remoteDatabase.addTodoRemote(todo);
      return Right(results); // Ensure returning 'Right' here
    } catch (e) {
      return Left(
        Failure("Oops, we couldn't add the todo"),
      ); // Ensure returning 'Left' in catch
    }
  }

  @override
  Future<Either<Failure, Todo>> deleteTodo(Todo todo) async {
    try {
      final results = await remoteDatabase.deleteTodoRemote(todo);
      return Right(results); // Ensure returning 'Right' here
    } catch (e) {
      return Left(
        Failure("Oops, we couldn't delete the todo"),
      ); // Ensure returning 'Left' in catch
    }
  }

  @override
  Future<Either<Failure, Todo>> editTodo(Todo todo) async {
    try {
      final results = await remoteDatabase.editTodoRemote(todo);
      return Right(results); // Ensure returning 'Right' here
    } catch (e) {
      return Left(
        Failure("Oops, we couldn't edit the todo"),
      ); // Ensure returning 'Left' in catch
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getAllTodos() async {
    try {
      final results = await remoteDatabase.listTodoRemote();
      return Right(results); // Ensure returning 'Right' here
    } catch (e) {
      return Left(
        Failure("Oops, we couldn't fetch the todo from database"),
      ); // Ensure returning 'Left' in catch
    }
  }

  // end access to remote database
}
