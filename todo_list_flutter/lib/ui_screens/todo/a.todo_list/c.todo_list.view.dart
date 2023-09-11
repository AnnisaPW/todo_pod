part of '_index.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoListAppbar(),
      ),
      floatingActionButton: const TodoListFab(),
      body: Center(
        child: OnBuilder.all(
          listenTo: _dt.rxTodoList,
          onWaiting: () => const CircularProgressIndicator(),
          onError: (e, s) => Text('Error: $e'),
          onData: (data) => _dt.rxTodoList.st.isEmpty
              ? const Text("you don't have todo list yet")
              : ListView(
                  children: List.generate(
                    _dt.rxTodoList.st.length,
                    (index) => OnReactive(
                      () => Card(
                        child: ListTile(
                          title: Text(_dt.rxTodoList.st[index].title),
                          subtitle: Text(_dt.rxTodoList.st[index].description),
                          onLongPress: () => _ct.delete(_dt.rxTodoList.st[index].todoId),
                          onTap: () => _ct.select(_dt.rxTodoList.st[index].todoId),
                          selected: _dt.rxTodoList.st[index].todoId == _dt.rxSelected.st,
                          trailing: Checkbox(
                            value: _dt.rxTodoList.st[index].isDone,
                            onChanged: (value) {
                              _ct.checkBox(_dt.rxTodoList.st[index]);
                            },
                            // isError: true,
                          ),
                          dense: true,
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
