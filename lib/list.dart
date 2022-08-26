import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListGenerator extends StatelessWidget {
  const ListGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Random Words Generator',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Random Words Generator'),
    //     ),
    //     body: const Center(
    //       // Add the const
    //       //child: Text(wordPair.asPascalCase), // REPLACE with...
    //       child: RandomWords(), // ...this line
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Words Generator'),
      ),
      body: const Center(
        // Add the const
        //child: Text(wordPair.asPascalCase), // REPLACE with...
        child: RandomWords(), // ...this line
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return ListTile(
            title: Text(
              _suggestions[index].asPascalCase,
              style: _biggerFont,
            ),
          );
        });
  }
}
