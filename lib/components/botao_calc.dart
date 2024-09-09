// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BotaoCalc extends StatefulWidget {
  final String texto;
  final Color corFundo;
   final Function onPressed;
  const BotaoCalc({super.key, required this.texto, required this.corFundo,  required this.onPressed});

  @override
  State<BotaoCalc> createState() => _BotaoCalcState();
}

class _BotaoCalcState extends State<BotaoCalc> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      backgroundColor: widget.corFundo,

      onPressed: () => widget.onPressed(widget.texto),
      child: Text(widget.texto,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white
      ),)
      
    );
  }
}