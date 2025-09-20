import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigets/login_screen.dart';
import 'package:flutter_application_1/wigets/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mk2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 180.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
               Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, size: 30),
                onPressed: () {
                  Navigator.pop(context); // Go back to FirstPage
                },
              ),
            ),
              Text(
                "Hey! Foodie\nWelcome To..",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Mk Food Court',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Continue with",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 150),
                      backgroundColor: Colors.yellow[900],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text("Login", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 150),
                      backgroundColor: Colors.yellow[900],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
