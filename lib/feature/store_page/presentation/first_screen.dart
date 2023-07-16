
import 'package:flutter/material.dart';
import 'package:gym_app/feature/store_page/presentation/login_page.dart';
import 'package:gym_app/feature/store_page/presentation/signup.dart';
import 'package:gym_app/feature/store_page/presentation/widgets/signup_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            SizedBox(
              height: double.maxFinite,
                child: Image.asset('assets/bg2.jpg',fit: BoxFit.cover,)),
            Positioned(
              bottom: 42,
                left: 40,
                child: Row(
                    children:[
                     SignupButton(buttonName: 'Log In', widget: LoginPage(),),
                      
                      SizedBox(
                        width: 94,
                      ),
                     SignupButton(buttonName: 'Sign Up', widget: SignUp(),)
                  
                
                ]))
          ]
      ),
    );
  }
}
