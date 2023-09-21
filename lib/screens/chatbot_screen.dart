import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:untitled/screens/main_screen.dart';
import '../constant/color.dart';

class chatScreen extends StatelessWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            width: double.infinity,
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => MainScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                width: 50,
                height: 50,
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/image 3.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GradientText(
                          "chatbot",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          colors: [
                            firstMainColor,
                            secondMainColor,
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200 , right: 40 , left: 40),
            child: Column(

                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF764BA2),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40 , top: 10),
                      child: Text(
                        "Hi! \nI'm your patient",
                        style: TextStyle(
                          fontSize: 24,
                          color: firstMainColor,
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280 , left: 15),
            child: Container(
              height: 45,
              width: 45,
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                AssetImage('assets/images/image 3.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350 , right: 40 , left: 40),
            child: Column(

                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF764BA2),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40 , top: 10),
                      child: Text(
                        "Hi! \nWhat do you feel?",
                        style: TextStyle(
                          fontSize: 24,
                          color: firstMainColor,
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430 , left: 350),
            child: Container(
              height: 45,
              width: 45,
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                AssetImage('assets/images/image 2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
