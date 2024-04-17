import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = 'Número';

  void insereValor(String teclaDigitada) {
    switch (teclaDigitada) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
        setState(() {
          numero += teclaDigitada;
        });
        break;

      case 'AC':
        setState(() {
          numero = '0';
        });

      default:
        numero += teclaDigitada;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Calculadora'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  numero,
                  style: TextStyle(fontSize: 72),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => insereValor('AC'),
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Text(''),
                Text(''),
                GestureDetector( onTap: () => insereValor('<x'),
                  child: Text(
                    '<x',
                    style: TextStyle(fontSize: 40),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => insereValor('7'),
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('8'),
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap:() => insereValor('9'),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('%'),
                  child: Text(
                    '%',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(onTap:() => insereValor('4'),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('5'),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('6'),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('X'),
                  child: Text(
                    'X',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector( onTap: () => insereValor('1'),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('2'),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('3'),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('-'),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector( onTap: () => insereValor('0'),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor(','),
                  child: Text(
                    ',',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('='),
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector( onTap: () => insereValor('+'),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            Text('Coluna 6'),
          ],
        ),
      ),
    );
  }
}
