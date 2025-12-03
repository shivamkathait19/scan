import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Animation<double>? _scale;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF8A00),
              Color(0xFFFF3D00),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Scan Your Product",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 40),

            Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),

                  borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white70,width: 5),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.network(
                      "https://cdn.pixabay.com/photo/2020/08/29/16/07/pikachu-5527375_1280.jpg",
                      fit: BoxFit.cover,
                      width: 240,
                    ),
                  ),
                ),
              ),


            const SizedBox(height: 50),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 18),
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.white,
                elevation: 20,
              ),
              onPressed: () {},
              child: const Icon(
                Icons.arrow_circle_right,
                size: 50,

                ),
              ),

          ],
        ),
      ),
    );
  }
}
