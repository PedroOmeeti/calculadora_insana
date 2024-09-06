import 'package:flutter/material.dart';

class BotaoCalcIcon extends StatelessWidget {
  final Color corFundo;
  final IconData icon;
  const BotaoCalcIcon({super.key, required this.corFundo, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        
        color: corFundo,  

      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white, size: 40),
      ),
    );
  }
}


//  return FloatingActionButton.large(
//       backgroundColor: corFundo,
//       onPressed: () {}, 
//       child: Icon(icon,
//         color: Colors.white,
//         size: 40,
        
//       ),
      
//     );