
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../constant/color.dart';
import 'create_account.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image(
              height: 180,
              width: 180,
              image: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  colors: [
                    firstMainColor,
                    secondMainColor,
                  ],
                ),
              ),
              width: 300,
              height: 70,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    Image(
                      image: AssetImage("assets/images/facebook.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Facebook",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  colors: [
                    firstMainColor,
                    secondMainColor,
                  ],
                ),
              ),
              width: 300,
              height: 70,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    Image(
                      image: AssetImage("assets/images/google.png"),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Google",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [
                      firstMainColor,
                      secondMainColor,
                    ],
                  ),
                ),
                width: 300,
                height: 70,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "don’t have an account?",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => CreateAccount(),
                  ),
                );
              },
              child: GradientText(
                "Create Account",
                style: TextStyle(
                  fontSize: 18,
                ),
                colors: [
                  firstMainColor,
                  secondMainColor,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
