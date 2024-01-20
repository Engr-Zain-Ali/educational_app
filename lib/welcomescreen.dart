import 'dart:async';

import 'package:educational_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});


  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final RoundedLoadingButtonController _buttonController=RoundedLoadingButtonController();
  void _doSomething()async{
    Timer( Duration(seconds: 3),(){
      _buttonController.success();
      Timer(Duration(seconds: 1),(){

      });
    });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.6,
           child: Padding(
             padding: const EdgeInsets.only(left: 38.0,right: 38,top: 60),
             child: Column(
               children: [
                 // Image(
                 //
                 //
                 //   image: NetworkImage("https://cdni.iconscout.com/illustration/premium/thumb/foreign-language-learning-books-3941984-3356584.png"),),
                 Image(


                   image: NetworkImage("https://assets-global.website-files.com/60db82d1be38ad3341c2ff23/61f84d696f80054846222a69_2022%20-%20Home%20Page%20Image-1000x1048-73a4079.png"),),



               ],
             ),
           ),

            decoration: BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70.r)),
            ),

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height/2.666,
    decoration: BoxDecoration(

    color: Color(0xFF674AEF),
    ),

    ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.666,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70.r), ),
                color: Colors.white,
                
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Learning Is Every Thing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text("Education is the most powerful weapon which you can use to change the world",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),),
                  ),
                  SizedBox(height: 30,),
                  // ElevatedButton(
                  //   onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Home())),
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Color(0xFF674AEF), // Change the button color to blue (you can replace it with your desired color)
                  //     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10), // Adjust the padding to increase the size
                  //   ),
                  //   child: Text(
                  //     "GET STARTED",
                  //     style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold), // Adjust the font size
                  //   ),
                  // ),
                  RoundedLoadingButton(
                      color: Color(0xFF674AEF),
                      controller: _buttonController, onPressed: (){
                    _doSomething();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                  }, child:Text("Get Started", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold), ))


                ],
              ),

            ),
          )


        ],
      ),
    );
  }
}
