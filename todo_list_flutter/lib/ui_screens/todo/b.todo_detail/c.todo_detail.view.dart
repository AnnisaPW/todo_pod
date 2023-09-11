part of '_index.dart';

class TodoDetailView extends StatelessWidget {
  const TodoDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoDetailAppbar(),
      ),
      floatingActionButton: const TodoDetailFab(),
      body: Center(
          child: OnBuilder.all(
        listenTo: _dt.rxTodo,
        onWaiting: () => const CircularProgressIndicator(),
        onError: (e, s) => Text('Error on: $e'),
        onData: (data) {
          final todo = _dt.rxTodo.st;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${todo?.todoId}'),
              Text('${todo?.title}'),
              Text('${todo?.description}'),
              Text('${todo?.isDone}'),
              Text('${todo?.createdAt}'),
            ],
          );
        },
      )),
    );
  }
}
