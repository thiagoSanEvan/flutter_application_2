/*import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Number++"),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Aperte no '+' para aumentar o número abaixo", 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),
              ),
              Text(
                "0",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 70
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.tealAccent)
                      ),
                      child: Text("+"),
                      onPressed: () {
                        
                      }, 
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.tealAccent)
                    ),
                    child: Text("Zerar"),
                    onPressed: () {
                      
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}*/

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: NumberCounter(),
    ),
  );
}

class NumberCounter extends StatefulWidget {
  @override
  _NumberCounterState createState() => _NumberCounterState();
}

class _NumberCounterState extends State<NumberCounter> {
  String _counter = "0";

  void _increment() {
    setState(() {
      int current = int.parse(_counter); // Convert String to int
      current++;                         // Increment
      _counter = current.toString();     // Convert back to String
    });
  }

  void _reset() {
    setState(() {
      _counter = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number++"),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aperte no '+' para aumentar o número abaixo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              _counter, // Use the state variable
              style: TextStyle(
                color: Colors.black,
                fontSize: 70,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.tealAccent),
                    ),
                    child: Text("+"),
                    onPressed: _increment, // Call the increment function
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.tealAccent),
                  ),
                  child: Text("Zerar"),
                  onPressed: _reset, // Call the reset function
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
