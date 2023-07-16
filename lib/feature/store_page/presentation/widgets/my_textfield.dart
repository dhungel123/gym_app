//
// import 'package:flutter/material.dart';
//
// class MyTextField extends StatelessWidget {
//
//    MyTextField({Key? key, required this.emailText,  }) : super(key: key);
//   final TextEditingController emailText;
//   final RegExp emailValid=RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
//
//   @override
//   Widget build(BuildContext context) {
//     return  TextFormField(
//       controller: emailText,
//       validator: emailValidator,
//       enabled: true,
//       decoration:InputDecoration(
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(21),
//               borderSide: const BorderSide(
//                 color: Colors.deepOrange,
//               )
//           ),
//           enabledBorder:OutlineInputBorder(
//               borderRadius: BorderRadius.circular(21,),
//               borderSide: const BorderSide(
//                 color: Colors.blueAccent,
//               )
//           ),
//           disabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(21),
//               borderSide: const BorderSide(
//                 color: Colors.black,
//               )
//           ),
//           prefixIcon: const Icon(
//             Icons.email,
//             color: Colors.white,
//           ),
//           hintText: "Enter Email",
//           hintStyle: TextStyle(color: Colors.white)
//
//       ),
//     );
//   }
//   final emailValidator=(email){
//   if(emailValid.hasMatch(email!)){
//
//   }
//   else if(email.isEmpty){
//   return "Please Enter Email";
//   }
//   else{
//   return "Invalid Email";
//   }
//
//
//   };
// }
