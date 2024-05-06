import 'package:bus_application/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/rafiki.png",
                height: 300,
                width: 200,
              ),
              Text("OTP"),
              Text("Enter the 6 digit code we sent to your email"),
              Text("Resend code"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  6,
                  (index) => Container(
                    height: 50,
                    width: 40,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      enabled: true,
                      cursorColor: Colors.deepOrange,
                      showCursor: false,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  child: Text(
                    "Confirm ",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.5), fontSize: 18),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepOrange.shade400)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
