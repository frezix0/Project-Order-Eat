import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotView extends StatefulWidget {
  @override
  _ForgotViewState createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
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
                        "Forgot Password",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffEB8071)),
                      ),
                      Text(
                        "Select contact details",
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
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffCBCBCB), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Image.asset('assets/Mail.png',
                              height: 29, width: 29),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              fontFamily: "Inter",
                              color: Color(0xffEB8071),
                            )),
                        Text(
                          "Send to your email",
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff7D2D2D)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffCBCBCB), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Image.asset('assets/Phone.png',
                              height: 29, width: 29),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone Number",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              fontFamily: "Inter",
                              color: Color(0xffEB8071),
                            )),
                        Text(
                          "Send to your phone number",
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff7D2D2D)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 45,
                onPressed: () {
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
        )));
  }
}
