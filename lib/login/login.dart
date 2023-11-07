import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pos/components/my_textfield.dart';
import 'package:pos/components/my_button.dart';
import 'package:pos/login/home.dart';
import 'package:flutter/services.dart';
import 'package:pos/main.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(MyApp());
}

class Login extends StatefulWidget {
  
   Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernameController;
  
  var passwordController;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, Orientation){
      return Material(
      child: Stack(
        
        children: [
        
          // Align(
          // child: CachedNetworkImage(
          //   imageUrl: "https://2.bp.blogspot.com/-H_FRMR9S3C4/XAnoKzcTL_I/AAAAAAAABzU/i-77D_aBR7YR7R5iJ8Z5BXmU6LMuDwWggCK4BGAYYCw/s1600/PT%2BBerca%2BSportindo%2Bloker%2Bkaltim.png",width: 400,height: 1800,),
          
          // ),     
              Align(child: const Image(image: NetworkImage("https://2.bp.blogspot.com/-H_FRMR9S3C4/XAnoKzcTL_I/AAAAAAAABzU/i-77D_aBR7YR7R5iJ8Z5BXmU6LMuDwWggCK4BGAYYCw/s1600/PT%2BBerca%2BSportindo%2Bloker%2Bkaltim.png"))),
    
           const Positioned(
            bottom: 300, 
            right: 0, 
            left: 0,
            child: 
            // TextField(
            //   style: TextStyle(fontSize: 20),
            //   decoration: InputDecoration(
            //     hintText: 'User Name',
            //     hintStyle: TextStyle(fontSize: 20, color: Colors.white),
            //     border: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Colors.teal,
            //       ),
            //     ),
            //     prefixIcon: Icon(Icons.people,color: Colors.white,)
            //   ),
            // )
            MyTextField(
              prefixIcon: Icon(Icons.people),
              hintText: "User Name",
              obscureText: false, controller: null,
            ),
            
        
          ),
          
          Positioned(
            bottom: 220,
            right: 0,
            left: 0,
            child:  MyTextField
            (prefixIcon: const Icon(Icons.password),
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
            ),),
            Positioned(
              bottom: 100,
              right: 0,
              left: 0,
              child: MyButton(
                onTap: (){
                const home();
              },))
          ]), 
          
        );
      }
      );
  }

  Widget _buildPortrait(){
    return Material(
      child: Stack(
        
        children: [
        
          Align(
          child: CachedNetworkImage(
            imageUrl: "https://2.bp.blogspot.com/-H_FRMR9S3C4/XAnoKzcTL_I/AAAAAAAABzU/i-77D_aBR7YR7R5iJ8Z5BXmU6LMuDwWggCK4BGAYYCw/s1600/PT%2BBerca%2BSportindo%2Bloker%2Bkaltim.png",width: 400,height: 1800,),
          
          ),        //  const Image(image: NetworkImage("https://2.bp.blogspot.com/-H_FRMR9S3C4/XAnoKzcTL_I/AAAAAAAABzU/i-77D_aBR7YR7R5iJ8Z5BXmU6LMuDwWggCK4BGAYYCw/s1600/PT%2BBerca%2BSportindo%2Bloker%2Bkaltim.png")),
    
           const Positioned(
            bottom: 300, 
            right: 0, 
            left: 0,
            child: 
            // TextField(
            //   style: TextStyle(fontSize: 20),
            //   decoration: InputDecoration(
            //     hintText: 'User Name',
            //     hintStyle: TextStyle(fontSize: 20, color: Colors.white),
            //     border: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Colors.teal,
            //       ),
            //     ),
            //     prefixIcon: Icon(Icons.people,color: Colors.white,)
            //   ),
            // )
            MyTextField(
              prefixIcon: Icon(Icons.people),
              hintText: "User Name",
              obscureText: false, controller: null,
            ),
            
        
          ),
          
          Positioned(
            bottom: 220,
            right: 0,
            left: 0,
            child:  MyTextField
            (prefixIcon: const Icon(Icons.password),
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
            ),),
            Positioned(
              bottom: 100,
              right: 0,
              left: 0,
              child: MyButton(
                onTap: (){
                const home();
              },))
          ]), 
          
        );
  }

  Widget _buildLandscape(){
    return Material(
      child: Stack(
        
        children: [
        
          Align(
          child: CachedNetworkImage(
            imageUrl: "https://2.bp.blogspot.com/-H_FRMR9S3C4/XAnoKzcTL_I/AAAAAAAABzU/i-77D_aBR7YR7R5iJ8Z5BXmU6LMuDwWggCK4BGAYYCw/s1600/PT%2BBerca%2BSportindo%2Bloker%2Bkaltim.png",width: 400,height: 1800,),
          
          ),        //  const Image(image: NetworkImage("https://2.bp.blogspot.com/-H_FRMR9S3C4/XAnoKzcTL_I/AAAAAAAABzU/i-77D_aBR7YR7R5iJ8Z5BXmU6LMuDwWggCK4BGAYYCw/s1600/PT%2BBerca%2BSportindo%2Bloker%2Bkaltim.png")),
    
           const Positioned(
            bottom: 300, 
            right: 0, 
            left: 0,
            child: 
            // TextField(
            //   style: TextStyle(fontSize: 20),
            //   decoration: InputDecoration(
            //     hintText: 'User Name',
            //     hintStyle: TextStyle(fontSize: 20, color: Colors.white),
            //     border: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Colors.teal,
            //       ),
            //     ),
            //     prefixIcon: Icon(Icons.people,color: Colors.white,)
            //   ),
            // )
            MyTextField(
              prefixIcon: Icon(Icons.people),
              hintText: "User Name",
              obscureText: false, controller: null,
            ),
            
        
          ),
          
          Positioned(
            bottom: 220,
            right: 0,
            left: 0,
            child:  MyTextField
            (prefixIcon: const Icon(Icons.password),
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
            ),),
            Positioned(
              bottom: 100,
              right: 0,
              left: 0,
              child: MyButton(
                onTap: (){
                const home();
              },))
          ]), 
          
        );
  }
}