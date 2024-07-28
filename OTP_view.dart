import 'package:firstapp/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpView extends StatefulWidget {
  @override
  _OtpViewState createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
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
      body: SafeArea(
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
                        "Verification Email",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffEB8071)),
                      ),
                      Text(
                        "Please enter the code",
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
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpTextField(
                    numberOfFields: 6,
                    fieldWidth: 45,
                    fieldHeight: 55,
                    decoration: InputDecoration(
                      fillColor: Color(0xffE5E5EA),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderColor: Color(0xFFEB8071),
                    showFieldAsBox: true,
                    mainAxisAlignment: MainAxisAlignment.center,
                    margin: EdgeInsets.only(right: 15),
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Didn't recieve a code? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          fontFamily: "Poppins",
                          color: Colors.black,
                        ),
                      ),
                      Text("Resend",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffEB8071))),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 45,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeView()));
                    },
                    color: Color(0xffEB8071),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                        fontFamily: "Inter",
                        color: Colors.white,
                      ),
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
