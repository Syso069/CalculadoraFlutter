import 'dart:ffi';

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
  String numeroInicial = '0';

  double primeiroNumero = 0.0;

  String operacao = '';

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
      case ',':
        setState(() {
          numeroInicial += teclaDigitada;

          numeroInicial = numeroInicial.replaceAll(',', '.');

          if (numeroInicial.contains('.')) {
            //
          } else {
            int numeroInt = int.parse(numeroInicial);
            numeroInicial = numeroInt.toString();
          }
          numeroInicial = numeroInicial.replaceAll('.', ',');
        });
        break;

      case '+':
      case '-':
      case 'X':
      case '/':
        operacao = teclaDigitada;
        numeroInicial = numeroInicial.replaceAll(',', '.');
        primeiroNumero = double.parse(numeroInicial);
        numeroInicial = numeroInicial.replaceAll('.', ',');
        numeroInicial = '0';
        break;

      case '=':
        double resultado = 0.0;

        if (operacao == '/') {
          if (double.parse(numeroInicial) * 1 == 0) {
            print('ERROR: divisão por zero é zero');
            return;
          }
        }

        if (operacao == '+') {
          resultado = primeiroNumero + double.parse(numeroInicial);
        }

        if (operacao == '-') {
          resultado = primeiroNumero - double.parse(numeroInicial);
        }

        if (operacao == 'X') {
          resultado = primeiroNumero * double.parse(numeroInicial);
        }

        if (operacao == '/') {
          resultado = primeiroNumero / double.parse(numeroInicial);
        }

        String resultadoString = resultado.toString();

        List<String> resultadoPartes = resultadoString.split('.');

        if (int.parse(resultadoPartes[1]) * 1 == 0) {
          setState(() {
            numeroInicial = int.parse(resultadoPartes[0]).toString();
          });
        } else {
          setState(() {
            numeroInicial = resultado.toString();
          });
        }
        break;

      case 'AC':
        setState(() {
          numeroInicial = '0';
        });

      default:
        numeroInicial += teclaDigitada;
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
                  numeroInicial,
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
                GestureDetector(
                  onTap: () => insereValor('<x'),
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
                  onTap: () => insereValor('9'),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('%'),
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
                GestureDetector(
                  onTap: () => insereValor('4'),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('5'),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('6'),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('X'),
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
                GestureDetector(
                  onTap: () => insereValor('1'),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('2'),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('3'),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('-'),
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
                GestureDetector(
                  onTap: () => insereValor('0'),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor(','),
                  child: Text(
                    ',',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('='),
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => insereValor('+'),
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
