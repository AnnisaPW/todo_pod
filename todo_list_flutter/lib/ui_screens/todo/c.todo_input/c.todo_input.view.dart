part of '_index.dart';

class TodoInputView extends StatelessWidget {
  const TodoInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoInputAppbar(),
      ),
      floatingActionButton: TodoInputFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TodoInputCharlie(),
            TodoInputDelta(),
            TodoInputEcho(),
          ],
        ),
      ),
    );
  }
}
