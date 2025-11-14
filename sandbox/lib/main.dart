import 'package:feature_1/feature_1.dart';
import 'package:flutter/material.dart';
import 'package:scale_framework/scale_framework.dart';

void main() {
  var registry = FeatureModulesRegistry(
    featureModules: [
      IncrementModule(),
    ],
  );
  runApp(MyApp(registry));
}

class MyApp extends StatelessWidget {
  final FeatureModulesRegistry registry;
  const MyApp(this.registry, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ModuleSetup(
        registry: registry,
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            OnCounterChangeWidget(
              builder: (_, count) {
                return Center(
                  child: Text(
                    '$count',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: IncrementCounterWidget(),
    );
  }
}
