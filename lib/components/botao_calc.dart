import 'package:flutter/material.dart';

class BotaoCalc extends StatelessWidget {
  final String texto;
  final Color corFundo;
  const BotaoCalc({super.key, required this.texto, required this.corFundo});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      backgroundColor: corFundo,

      onPressed: () {
        return null;
      }, 
      child: Text(texto,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white
      ),)
      
    );
  }
}