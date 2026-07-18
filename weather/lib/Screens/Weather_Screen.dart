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
                const Text(
                  "Lagos, Nigeria",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    letterSpacing: -0.5,
                  ),
                ),

                const SizedBox(height: 20),

                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Stack(
                          alignment: Alignment.center,

                          children: [
                            Icon(
                              Icons.wb_sunny_rounded,
                              color: Colors.orangeAccent,
                              size: 170,
                            ),

                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Icon(
                                Icons.cloud_rounded,
                                color: Colors.white.withOpacity(0.95),
                                size: 75,
                              ),
                            ),

                            Positioned(
                              bottom: 55,
                              left: 5,
                              child: Icon(
                                Icons.cloud_rounded,
                                color: Colors.white.withOpacity(0.70),
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // const SizedBox(height: 10),
                      Text(
                        "28 C",
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          height: 1.0,
                        ),
                      ),

                      const SizedBox(height: 6),

                      const Text(
                        'Partly Cloudy',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Center(
                        child: Card(
                          elevation: 0,
                          color: Colors.white.withOpacity(0.35),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 28.0,
                              vertical: 8.0,
                            ),

                            child: Text(
                              "High: 31°C / Low: 22°C",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Center(
                        child: Card(
                          elevation: 0,
                          color: Colors.white.withOpacity(0.35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(16),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Humidity",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),

                                    const Text(
                                      "65%",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 1,
                                color: Colors.black.withOpacity(0.15),
                              ),

                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Wind Speed",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),

                                    const Text(
                                      "12 Km/h",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
