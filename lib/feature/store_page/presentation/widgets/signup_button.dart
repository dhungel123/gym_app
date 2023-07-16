import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({Key? key, required this.buttonName, required this.widget}) : super(key: key);
  final String buttonName;
  final Widget widget;


  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));


      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32,vertical: 12),
          backgroundColor:Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21),
              side: BorderSide(color: Colors.white,width: 2)
          )
      ),
      child: Text(buttonName,style: TextStyle(fontSize: 20),),
    );
  }
}
