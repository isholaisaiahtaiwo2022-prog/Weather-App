import 'package:flutter/material.dart';

// class AppColors {
//   static const List<Color> daygradient = [
//     Color(0xFF2980B9),
//     Color(0xFF6DD5FA),
//     Color(0xFFFFFFFF),
//   ];

//   static const List<Color> nightgradient = [
//     Color(0xFF0F2027),
//     Color(0xFF203A43),
//     Color(0xFF2C5364),
//   ];

//   // Card and Container Background
//   static Color cardBackground = Colors.white.withOpacity(0.15);

//   //Text Color
//   static const Colors textPrimary = Colors.white;
//   static Color textSecondary = Colors.white.withOpacity(0.7);
//   static const Color accentGold = Colors(0xFFFFD700);
// }

class weatherScreen extends StatefulWidget {
  const weatherScreen({super.key});

  @override
  State<weatherScreen> createState() => _weatherScreenState();
}

class _weatherScreenState extends State<weatherScreen> {
  @override
  Widget build(BuildContext context) {


  final double screenWidth = MediaQuery.of(context).size.width;
  final double screenHeight  = MediaQuery.of(context).size.height;


    return Scaffold(
     body: SafeArea(
      child:Container(
        width: screenWidth,
        height: screenHeight,

        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFFFD78A),
            Color(0xFFE3F2FD)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft
          )
        ),
      ) 
     ),
    );
  }
}
