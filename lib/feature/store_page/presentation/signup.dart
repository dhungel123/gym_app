
import 'package:flutter/material.dart';
import 'package:gym_app/feature/store_page/presentation/login_page.dart';


class SignUp extends StatefulWidget{
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  final GlobalKey<FormState> _formKey=GlobalKey();
  final RegExp signUpEmailValid=RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  @override
  Widget build(BuildContext context){
    return Scaffold(

        body: Stack(
          children:[
            SizedBox(
              height: double.maxFinite,
              child: Image.asset('assets/a.jpg',fit: BoxFit.cover,),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 50),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: const Text('SignUp',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.white),),
                      ),
                      TextFormField(
                        controller: nameController,
                        validator: (name){
                          if(name!.isEmpty){
                            return "Please Enter FullName";
                          }
                          else{


                          }
                        },

                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                  color: Colors.blueAccent,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                  color: Colors.deepOrange,
                                )

                            ),
                          labelText: "Enter full name ",
                          labelStyle: TextStyle(color: Colors.white)
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        controller: emailController,
                        validator: (emailValue){
                          if(signUpEmailValid.hasMatch(emailValue!)){



                          }

                          else{
                            return "Enter valid Email";

                          }
                        },
                        decoration:  InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                  color: Colors.deepOrange,
                                )

                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                )
                            ),
                          labelText: "Enter Email",
                          labelStyle: TextStyle(color: Colors.white)
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21),
                            side: BorderSide(
                              color: Colors.white,width: 1
                            ),
                          ),
                          backgroundColor: Colors.transparent
                        ),
                        onPressed: (){
                        if(_formKey.currentState!.validate()){
                          // var name=nameController.text;
                          // var email=emailController.text;
                          // print("Name:$name, Email:$email");
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));

                        }






                      },child: const Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 16),),)
                    ],
                  ),
                ),
              ),
            ),
          ),
    ]
        )
    );
  }
}