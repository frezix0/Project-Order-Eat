import 'package:firstapp/pages/about_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashView extends StatefulWidget{
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const AboutView(),
        )
      );
    });
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Logo.png',
                height: 320,
                width: 290,
              ),
              const SizedBox(height: 5),
              const Text(
                'what are you craving for?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 22,
                  color: Color(0xff7D2D2D),
                  fontWeight: FontWeight.w800,
                )
              )
            ],
          )
        ),
      ),
    );
  }
    }