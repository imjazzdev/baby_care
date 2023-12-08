import 'package:baby_care/view/bottom_navigator.dart';
import 'package:baby_care/view/home.dart';
import 'package:baby_care/view/registrasi.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            height: double.maxFinite,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/logo.png',
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pink.shade300,
                    border: Border.all(color: Colors.pinkAccent)),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nama', style: TextStyle(fontSize: 16)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink.shade200,
                                border: Border.all(color: Colors.pinkAccent)),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password', style: TextStyle(fontSize: 16)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink.shade200,
                                border: Border.all(color: Colors.pinkAccent)),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainNavigator(),
                                ));
                          },
                          child: Text('Login', style: TextStyle(fontSize: 16))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun? '),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Registrasi(),
                            ));
                      },
                      child: Text('Register'))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
