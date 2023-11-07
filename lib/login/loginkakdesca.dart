// import 'package:flutter/material.dart';
// import 'package:pos/components/my_button.dart';
// import 'package:pos/components/my_textfield.dart';
// import 'package:pos/login/home.dart';
// // import 'package:pos/components/my_button.dart';
// class LoginPage extends StatefulWidget {
  
//    LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
      
//   @override
//   Widget build(BuildContext context) {
    
    
//     return const Scaffold(
      
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: 50,),
//        Center(child: Image(image: NetworkImage("https://2.bp.blogspot.com/-H_FRMR9S3C4/XAnoKzcTL_I/AAAAAAAABzU/i-77D_aBR7YR7R5iJ8Z5BXmU6LMuDwWggCK4BGAYYCw/s1600/PT%2BBerca%2BSportindo%2Bloker%2Bkaltim.png",),width: 200,)),
//         SizedBox(height: 100,),
//          Positioned(
//             bottom: 300, 
//             right: 0, 
//             left: 0,
//             child: MyTextField(
              
//               hintText: "User Name",
//               obscureText: false, 
//               // controller:   TextEditingController,
//             ),
        
//           ),
//           SizedBox(height: 30,),
//           Positioned(
//             bottom: 220,
//             right: 0,
//             left: 0,
//             child:   MyTextField
//             (
//             // controller: passwordController,
//             hintText: "Password",
//             obscureText: true,
//             ),),

//         SizedBox(height: 30,),
//           Positioned(
//             bottom: 220,
//             right: 0,
//             left: 0,
//             child: MyButton(tap: (){
//               Navigator.of(context).pushReplacement(home());
//             })
//             ),

            
//         ],
//       ),
//     );
//   }
// }