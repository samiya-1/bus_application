import 'package:bus_application/constants/colorconstants/colorconstants.dart';
import 'package:bus_application/view/Homescreen/homescreen.dart';
import 'package:bus_application/view/Registerscreen/registerscreen.dart';
import 'package:bus_application/view/loginscreen/OTPverification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(
                              "https://imgs.search.brave.com/HcXwwXWcGeKOyzs57dNMw6Asydx4cKKN1lBtHPozRrc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jbGFz/c3Jvb21jbGlwYXJ0/LmNvbS9pbWFnZS9z/dGF0aWM3L3ByZXZp/ZXcxL2ZsYXQtZGVz/aWduLW9mLWEtY2l0/eS1idXMtb24tYS1y/b2FkLXdpdGgtY2l0/eS1idWlsZGluZ3Mt/NjUwMTMuanBn"))),
                ),
                Text(
                  "Log in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(color: ColorConstants.primaryblack, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(.4)),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                hintText: "Email", border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(.4)),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                hintText: "Password", border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 10),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.5), fontSize: 18),
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepOrange.shade400)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Log in with  ",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                    Image.asset(
                      "assets/images/google.png",
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpVerification()));
                      },
                      child: Image.asset(
                        "assets/images/facebook.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/images/github.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.deepOrange.shade400),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
