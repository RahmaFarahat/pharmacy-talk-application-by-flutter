import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:untitled/screens/profile_screen.dart';
import '../constant/color.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

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
                  builder: (ctx) => ProfileScreen(),
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
                child: Icon(
                    Icons.arrow_back_ios
                ),
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
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Column(children: [
                      SizedBox(
                        width: 5,
                      ),
                      GradientText("Edit Profile",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          colors: [
                            firstMainColor,
                            secondMainColor,
                          ])
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/image 2.png'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text(
                          "Change Name",

                          style: TextStyle(
                            color: secondMainColor,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        hintText: "Name",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: secondMainColor,
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text(
                          "Change Password",
                          style: TextStyle(
                              color: secondMainColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        hintText: "*******",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: secondMainColor,
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
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 190,
            child: Icon(Icons.camera_alt_rounded , size: 50, color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
