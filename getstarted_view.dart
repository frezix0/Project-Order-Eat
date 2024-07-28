import 'package:firstapp/pages/OTP_view.dart';
import 'package:firstapp/pages/login_view.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
                        "Let's Get Started",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffEB8071)),
                      ),
                      Text(
                        "Your Meal Journey!",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffEB8071)),
                      ),
                      Text(
                        "Create account and choose your",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff7D2D2D)),
                      ),
                      Text(
                        "favorite menu",
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
                    "Name",
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
                    "Phone Number",
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
                    height: 25,
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
                      "Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                        fontFamily: "Inter",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account? ",
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
                                  builder: (context) => LoginView()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffEB8071)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
              )
            ],
          ),
        ),
      ),
    );
  }
}
