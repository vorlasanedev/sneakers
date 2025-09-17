import 'package:sneakers/features/todo/domain/entities/todo.dart';
import 'package:sneakers/features/todo/domain/repositories/todo_repository.dart';
import 'package:sneakers/features/todo/data/database/todo_remote_database.dart';

class TodoRepositoryImpl implements TodoRepository {
  // access to remote database
  final TodoRemoteDatabase remoteDatabase;
  TodoRepositoryImpl({required this.remoteDatabase});
  // end access to remote database

  @override
  Future<Todo> addTodo(Todo todo) async {
    final results = await remoteDatabase.addTodoRemote(todo);

    return results;
  }

  @override
  Future<Todo> deleteTodo(Todo todo) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Todo> editTodo(Todo todo) async {
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getAllTodos() async {
    // TODO: implement getAll
    throw UnimplementedError();
  }
}
