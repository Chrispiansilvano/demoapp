import 'package:demo/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:demo/homepage/index.dart';

class LoginIntro extends StatelessWidget {
  const LoginIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Center(
                
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
          
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 23),
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      // color: Colors.purple,
                      child: const Text(
                        "Welcome! Choose the login method",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 23),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        // width: 350,
                        width: MediaQuery.of(context).size.width * 0.75,
            
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Phone Number",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onTap: () {
                        print("hello world");
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 23),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Email and password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) =>  const EpLogin()),
                        // );
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 23),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Username and password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onTap: () {
                        print("hello world");
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 23),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Sign in with google",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onTap: () {
                        print("hello world");
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 23),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Facebook",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onTap: () {
                        print("hello world");
                      },
                    ),
                    Center(
                      child: Row(
                        children: [
                          Container(
                            // color: Colors.blue,
                            padding: const EdgeInsets.fromLTRB(12, 10, 15, 23),
                            child: const Text(
                              "You dont have an account ?",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
                              child: const Text(
                                "Sign up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                             onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignupIntro()),
                        );
                      },
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 23),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Lets go Home",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Index()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}