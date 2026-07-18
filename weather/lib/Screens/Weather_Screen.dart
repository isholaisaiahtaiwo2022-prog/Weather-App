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
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE3F2FD), Color(0xFFFFD78A)],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Good Morning",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                    // height: 2.0,
                  ),
                ),
          
                const SizedBox(height: 12),
                Text(
                  "Current City",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text("Lagos, Nigeria",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black87,
                  letterSpacing: -0.5
                ),),
          
                const SizedBox(height: 20,),
          
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 140,
                        width: 140,
                        child: Stack(
                          alignment: Alignment.center,
                        
                          children: [
                            Icon(Icons.wb_sunny_rounded,
                            color: Colors.orangeAccent,
                            size: 100,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
