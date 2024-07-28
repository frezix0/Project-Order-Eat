import 'package:firstapp/pages/OTP_view.dart';
import 'package:firstapp/pages/forgotpass_view.dart';
import 'package:firstapp/pages/getstarted_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffEB8071)),
                      ),
                      Text(
                        "Sign to your account",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff7D2D2D)),
                      ),
                    ],
                  ),
                  Image.asset('assets/Logo1.png', height: 128, width: 110),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffEB8071)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffE5E5EA)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffEB8071)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffE5E5EA)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffEB8071)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffE5E5EA)),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 11),
                          suffixIcon: Icon(Icons.visibility_off)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "                                         ",
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotView()));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 45,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpView()));
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => OtpView()));
                    },
                    color: Color(0xffEB8071),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                        fontFamily: "Inter",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          fontFamily: "Poppins",
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupView()));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffEB8071)),
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: 135,
                        color: Color(0xff7D8287),
                      ),
                      Text(
                        "or Login with",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Container(
                        height: 2,
                        width: 135,
                        color: Color(0xff7D8287),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffCBCBCB), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Google.png', height: 33, width: 33),
                        Text("Sign in with Google",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              fontFamily: "Inter",
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
