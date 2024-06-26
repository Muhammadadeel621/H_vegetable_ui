import 'package:flutter/material.dart';
import 'package:ui_screens/home_screen.dart';
import 'package:ui_screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
            const Text(
              "Sign In Your Account",
              style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 15),
                    hintText: "e.g : jansmith@gmail.com",
                    fillColor: const Color(0xffFAFAFA),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1)),
                    hintStyle:
                        TextStyle(fontSize: 10, color: Colors.grey.shade400)),
                keyboardType: TextInputType.name,
                obscureText: false,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle:
                          const TextStyle(color: Colors.black, fontSize: 15),
                      hintText: "**************",
                      fillColor: const Color(0xffFAFAFA),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1)),
                      hintStyle:
                          TextStyle(fontSize: 10, color: Colors.grey.shade400)),
                  keyboardType: TextInputType.name,
                  obscureText: true,
                )),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                height: 52,
                width: 282,
                decoration: BoxDecoration(
                    color: const Color(0xff00B140),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Or Sign in with",
              style: TextStyle(fontSize: 18, color: Color(0xff888888)),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("assets/images/google-logo.png")),
                  Image(image: AssetImage("assets/images/facebook-logo.png")),
                  Image(image: AssetImage("assets/images/twitter-logo.png")),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don\'t Have an account?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff888888),
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff00B140),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // RichText(
            //   text: const TextSpan(
            //     text: 'Don\'t Have an account?',
            //     style: TextStyle(
            //         fontSize: 16,
            //         color: Color(0xff888888),
            //         fontWeight: FontWeight.bold),
            //   children: <TextSpan>[
            //     TextSpan(
            //         text: "SIGN UP",
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 18,
            //             color: Color(0xff00B140))),
            // ],
            // ),
            // )
          ],
        ),
      ),
    );
  }
}
