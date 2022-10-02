import 'package:flutter/material.dart';
import 'package:medical_app/pages/loginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Container(
            width: width,
            height: height * 0.25,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/slide1.png'), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Your Email id",
                  prefixIcon: Icon(Icons.email, color: Colors.orangeAccent),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.orangeAccent,
                        width: 1.0,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Your Password",
                  prefixIcon:
                      Icon(Icons.password_outlined, color: Colors.orangeAccent),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.orangeAccent,
                        width: 1.0,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.orangeAccent,
            ),
            child: const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
            //       return const LoginScreen();
            //     })),
            child: RichText(
                text: TextSpan(
                    text: "have an account?",
                    style: TextStyle(color: Colors.grey[500], fontSize: 14),
                    children: const [
                  TextSpan(
                    text: " Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ])),
          )
        ],
      ),
    );
  }
}
