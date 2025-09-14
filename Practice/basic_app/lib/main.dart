import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/bordered_image.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePage(title: 'Bordered Image Demo');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




  @override
  Widget build(BuildContext context) {
    return const MyHomePage(title: 'Bordered Image Demo');
  }


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     title: Text(widget.title),
    //   ),
    //
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         const Text('You have pushed the button this many times:'),
    //         Text(
    //           '$_counter',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //         const SizedBox(height: 16),
    //         GestureDetector(
    //           onDoubleTap: () {
    //             _incrementCounter();
    //           },
    //           child: ElevatedButton(
    //             onPressed: () {},
    //             child: const Text('Nút ở giữa'),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    //
    //
    //
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );

    // return Container(
    //   height: 200,
    //   width: 100,
    //   alignment: Alignment.bottomRight,
    //   padding: const EdgeInsets.all(50),
    //   margin: const EdgeInsets.all(100),
    //   decoration: BoxDecoration(
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BorderedImage(
              imageUrl: 'https://picsum.photos/300/200?random=1',
            ),
            const SizedBox(height: 20),
            BorderedImage(
              imageUrl: 'https://picsum.photos/300/200?random=2',
            ),
            const SizedBox(height: 20),
            BorderedImage(
              imageUrl: 'https://picsum.photos/300/200?random=3',
            ),
          ],
        ),
      ),
    );
  }
}
