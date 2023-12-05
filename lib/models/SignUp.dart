import 'package:flutter/material.dart';
import 'Button.dart';
import 'Login.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _CreateState();
}

class _CreateState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column( crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70.0,),
              Center(
                  child: Text('Create your Account',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24),)),
              SizedBox(height: 20.0),
              SizedBox(height:350, width: 310,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          controller:TextEditingController(),
                          decoration: InputDecoration(
                            hintText: 'Name',
                          ),
                        ),
                        SizedBox(height: 40.0,),
                        TextField(
                          controller:TextEditingController(),
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                          ),
                        ),
                        SizedBox(height: 40.0,),
                        TextField(
                          controller:TextEditingController(),
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                        SizedBox(height: 40.0,),
                        TextField(
                          controller:TextEditingController(),
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: buttonPrimary,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  LogIn()));
                },
                child: Text(
                  'Sign Up', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w700),textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14)),
                  TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  LogIn()));
                  }, child: Text('Log In',style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14,decoration: TextDecoration.underline)))


                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
