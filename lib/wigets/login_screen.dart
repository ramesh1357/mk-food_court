import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigets/homepage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
        child: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 10)),
            Align(
              
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, size: 30,color: Colors.amberAccent,),
                onPressed: () {
                  Navigator.pop(context); // Go back to FirstPage
                },
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  
                  children: [
                    
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          labelText: "Email",
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "password",
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.lock),
            
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        keyboardType: TextInputType.none,
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                      child: SizedBox(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 150,
                            ),
                            backgroundColor: Colors.yellow[900],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              
                              ),
                            );
                            // Navigator.pop(context);
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
            
                    Text(
                      "Continue with Social Media",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Google Button
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            icon: const Icon(
                              Icons.g_mobiledata,
                              color: Colors.white,
                              size: 28,
                            ),
                            label: const Text(
                              "Google",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Google Login Clicked"),
                                ),
                              );
                            },
                          ),
            
                          // Facebook Button
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            icon: const Icon(
                              Icons.facebook,
                              color: Colors.white,
                              size: 28,
                            ),
                            label: const Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Facebook Login Clicked"),
                                ),
                              );
                            },
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
    );
  }
}
