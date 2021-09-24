import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key, Scaffold? home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
        MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.black26,
            appBar: AppBar(
              title: Text(
                  'Dice Roller'
              ),
              backgroundColor: Colors.black45,
            ),
            body: SafeArea(
                child: DicePage()
            ),
          ),
        )

    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNum=1;
  var rightDiceNum=1;
  void changeDiceFace(){
   leftDiceNum=Random().nextInt(6)+1;
   rightDiceNum=Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child:FlatButton(child: Image.asset('images/dice$leftDiceNum.png'),
            onPressed: (){
              setState(() {
                changeDiceFace();
                });
            },
              onLongPress: (){
                setState(() {
                  changeDiceFace();
                  });
              },
              ),
          ),
          SizedBox(
            width: 10
          ),
          Expanded(
            flex: 1,
            child:FlatButton(child: Image(image: AssetImage('images/dice$rightDiceNum.png'),
            ),
            onPressed: (){
              setState(() {
                changeDiceFace();
                });},
              onLongPress: (){
                  setState(() {
                    changeDiceFace();
                  });},
                  ),
          ),
        ],
      ),
    );
  }
}


