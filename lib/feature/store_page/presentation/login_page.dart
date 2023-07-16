
import 'package:flutter/material.dart';
import 'package:gym_app/feature/store_page/presentation/signup.dart';
import 'package:gym_app/feature/store_page/presentation/store_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

  var emailText=TextEditingController();

  var passText=TextEditingController();

  @override
  void dispose() {
    emailText.dispose();
    passText.dispose();


    super.dispose();
  }


  final RegExp emailValid=RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: Stack(
          children: [
            SizedBox(
              height: double.maxFinite,
              child: Image.asset('assets/loginBg.jpg',fit: BoxFit.cover,),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 50 ,right: 50),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const Text('Login',style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                              children: [
                                TextFormField(
                                  validator: (email){
                                    if(emailValid.hasMatch(email!)){

                                    }
                                    else if(email.isEmpty){
                                      return "Please Enter Email";
                                    }
                                    else{
                                      return "Invalid Email";
                                    }


                                  },
                                  controller: emailText,
                                  enabled: true,
                                  decoration:InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21),
                                          borderSide: const BorderSide(
                                            color: Colors.deepOrange,
                                          )
                                      ),
                                      enabledBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21,),
                                          borderSide: const BorderSide(
                                            color: Colors.blueAccent,
                                          )
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21),
                                          borderSide: const BorderSide(
                                            color: Colors.black,
                                          )
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                      hintText: "Enter Email",
                                    hintStyle: TextStyle(color: Colors.white)

                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                    validator: (password){
                                      if(password==null||password.isEmpty){
                                        return "Enter Password";
                                      }

                                    },
                                    controller: passText,
                                    obscureText: true,
                                    obscuringCharacter: '*',
                                    decoration:InputDecoration(
                                      labelText: 'Enter password',
                                      labelStyle: TextStyle(color: Colors.white),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21),
                                          borderSide: const BorderSide(
                                            color: Colors.deepOrange,
                                          )

                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21),
                                          borderSide: const BorderSide(
                                            color: Colors.blueAccent,
                                          )
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(21),
                                          borderSide: const BorderSide(
                                            color: Colors.black,
                                          )
                                      ),
                                      prefixIcon: const Icon(Icons.lock,color: Colors.white,),
                                      suffixIcon: IconButton(
                                        icon: const Icon(
                                          Icons.remove_red_eye,color: Colors.deepOrange,
                                        ), onPressed: () {
                                        print("icon pressed");
                                      },
                                      ),


                                    )

                                ),
                                // CustomTextFormFiled(
                                //     callBack:
                                //
                                // ),

                                ElevatedButton(onPressed:(){

                                  if(_formKey.currentState!.validate()){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context)=>const StorePage(),
                                      ),
                                    );
                                  }

                                },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,

                                    padding: const EdgeInsets.symmetric(horizontal: 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(21),
                                      side: BorderSide(color: Colors.white,width: 2)

                                    ),
                                  ),

                                  child: const Text('Login',style: TextStyle(fontSize: 16),),),
                                Row(
                                  children: [
                                    const Text('Doesnot have an account',style: TextStyle(color: Colors.white),),
                                    MaterialButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));


                                    },child: const Text('SignUp',style: TextStyle(color: Colors.white),),
                                    )


                                  ],
                                ),
                              ]),
                        ),
                      ]
                  ),
                ),
              )
          ),
    ]
        )
    );

  }
}