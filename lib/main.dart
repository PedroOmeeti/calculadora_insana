// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculadora_insana/components/botao_calc.dart';
import 'package:calculadora_insana/components/botao_calc_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 35, 36),
          title: Center(child: const Text('Calculadora Insana',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: const Center(
          child: Calculadora(),
        ),
      ),
    );
  }
}

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  // TextEditingController _controlerDisplay = TextEditingController();
String display = 'Teste aqui2';
void clearDisplay() {
  setState(() {
    display = '0';
    print('cliquei no AC');
    
  });
  
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // const Center(child: Text("Calculadora Insana")),
            
            Row( 
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 200,
                    width: 400,
                    child: Container(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(display,
                      style: TextStyle(
                        fontSize: 30, 
                        color: Colors.white
                        
                      ),
                      ),
                    ) 
                  ),
                ),
              ],
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [   
                GestureDetector( 
                  behavior: HitTestBehavior.translucent,                 
                  onTap: () => {                    
                      clearDisplay(),
                      print('GESTURE DENTRO')                    ,
                  },
                  child: BotaoCalc(texto: 'AC', corFundo: Color.fromARGB(255, 8, 112, 22))
                ),
                BotaoCalc(texto: '()', corFundo: Color.fromARGB(255, 67, 81, 202)),
                BotaoCalc(texto: '%', corFundo: Color.fromARGB(255, 67, 81, 202)),
                BotaoCalc(texto: '/', corFundo: Color.fromARGB(255, 67, 81, 202)),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BotaoCalc(texto: '7', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: '8', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: '9', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: 'x', corFundo: Color.fromARGB(255, 67, 81, 202)),          
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BotaoCalc(texto: '4', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: '5', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: '6', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: '-', corFundo: Color.fromARGB(255, 67, 81, 202)),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BotaoCalc(texto: '1', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: '2', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: '3', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: '+', corFundo: Color.fromARGB(255, 67, 81, 202)),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BotaoCalc(texto: '0', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalc(texto: ',', corFundo: Color.fromARGB(255, 37, 37, 37)),
                BotaoCalcIcon(corFundo: Color.fromARGB(255, 37, 37, 37), icon: Icons.backspace),
                BotaoCalc(texto: '=', corFundo: Color.fromARGB(255, 45, 59, 185)),
            ],),
        
      
      
        ],
      ),
    );
  }
}
