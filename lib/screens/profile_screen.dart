import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../constant/color.dart';
import 'Edit Profile_Screen.dart';
import 'US_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image(
        width: double.infinity,
        image: AssetImage('assets/images/background.png'),
        fit: BoxFit.fill,
      ),
          GestureDetector(
            onTap: (){

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
              child: Column(

                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child:CircleAvatar(
                              radius: 50,
                              backgroundImage:AssetImage('assets/images/image 2.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GradientText(
                            "Your Account",
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
                        width: 350,
                        height: 70,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => EditProfileScreen(),
                                ),
                              );
                            },
                            child: Row(children: [
                              Image(
                                image: AssetImage(
                                    "assets/images/mdi_user-outline.png"),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text("Edit profile",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ]))),
                    SizedBox(
                      height: 10,
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
                        width: 350,
                        height: 70,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => UsScreen(),
                                ),
                              );
                            },
                            child: Row(

                                children: [
                              Image(
                                image: AssetImage(
                                    "assets/images/material-symbols_help-clinic-outline-rounded.png"),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text("Us",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ]))),
                    SizedBox(
                      height: 10,
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
                        width: 350,
                        height: 70,
                        child: TextButton(
                            onPressed: () {},
                            child: Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Image(
                                image: AssetImage("assets/images/Vector.png"),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text("Log Out",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ]))),
                  ])))
    ]));
  }
}
