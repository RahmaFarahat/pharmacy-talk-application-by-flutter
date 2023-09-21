import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:untitled/screens/Augmentin_screen.dart';
import 'package:untitled/screens/main_screen.dart';
import '../constant/color.dart';

class DictionaryScreen extends StatelessWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

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
            onTap: (){
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/images/dictionary.png'),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        GradientText(
                          "Dictionary",
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
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30 , left: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(
                            "Augme",
                            style: TextStyle(
                              fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          suffixIcon: Icon(Icons.search , size: 30,),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(

                              color: Color(0xFF764BA2),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => AugmentinScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF764BA2),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image(image: AssetImage("assets/images/image 5.png"),),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText("Augmentin",
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      colors: [
                                        firstMainColor,
                                        secondMainColor,
                                      ]),
                                  Text("228mg/5ml", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GradientText(
                          "Recent History",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          colors: [
                            firstMainColor,
                            secondMainColor,
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF764BA2),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image(image: AssetImage("assets/images/image 4.png"),),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GradientText("Panadol",
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    colors: [
                                      firstMainColor,
                                      secondMainColor,
                                    ]),
                                Text("500mg", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF764BA2),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image(image: AssetImage("assets/images/image 6.png"),),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GradientText("Voltaren",
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    colors: [
                                      firstMainColor,
                                      secondMainColor,
                                    ]),
                                Text("75mg/3ml", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
