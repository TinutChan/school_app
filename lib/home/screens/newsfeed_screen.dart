import 'package:flutter/material.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({super.key});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

int _height = 0;

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _unincrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$_height',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Slider(
              divisions: 100,
              min: 0,
              max: 100,
              value: _height.toDouble(),
              onChanged: (value) {
                setState(() {
                  _height = value.toInt();
                });
              }),
          Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: InkWell(
                    onTap: _unincrementCounter,
                    child: const Icon(Icons.remove),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text('$_counter'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: InkWell(
                    onTap: _incrementCounter,
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
