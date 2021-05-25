import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';
import 'package:provider/provider.dart';
import 'package:test_built_redux/logic/action.dart';
import 'package:test_built_redux/logic/models/user.dart';
import 'package:test_built_redux/logic/state.dart';
import 'package:test_built_redux/logic/store.dart';

void main() {
  runApp(App(
    key: ValueKey('APP'),
  ));
}

class App extends StatelessWidget {
  final store;
  App({required Key key})
      : store = createStore(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => store,
      child: ReduxProvider(
        store: store,
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: HomePage(
            key: ValueKey('HomeScreen'),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('built_redux'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StoreConnection<Counter, CounterActions, int>(
              connect: (state) => state.count,
              builder: (context, state, actions) => Text('Counter: $state'),
            ),
            Expanded(
              child: StoreConnection<Counter, CounterActions, List<User?>>(
                connect: (state) => state.users,
                builder: (context, state, actions) => ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: state.length,
                  itemBuilder: (context, index) => ListTile(
                    key: ValueKey(state[index]!.id),
                    title: Text(state[index]!.name),
                    subtitle: Text(state[index]!.email),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          StoreConnection<Counter, CounterActions, int>(
            connect: (state) => state.count,
            builder: (context, state, actions) => FloatingActionButton(
              onPressed: () => actions.increment(5),
              tooltip: 'Bro',
              child: Icon(Icons.add),
            ),
          ),
          StoreConnection<Counter, CounterActions, List<User?>>(
            connect: (state) => state.users,
            builder: (context, state, actions) => FloatingActionButton(
              onPressed: () => actions.getUsers(() {}),
              tooltip: 'Get',
              child: Icon(Icons.ac_unit),
            ),
          ),
        ],
      ),
    );
  }
}
