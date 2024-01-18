import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List catName=[
    "Category",
    "Classes",
    "Free Course",
    "Book Store",
    "Live course",
    "Leader board",

  ];
  List<Color>catColor=[
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.greenAccent,
    Colors.yellow,
    Colors.grey,

  ];
  List<Icon> catIcon=[
    Icon(Icons.category,size: 30,color: Colors.white,),
    Icon(Icons.video_library_outlined,size: 30,color: Colors.white,),
    Icon(Icons.assignment,size: 30,color: Colors.white,),
    Icon(Icons.store,size: 30,color: Colors.white,),
    Icon(Icons.play_circle,size: 30,color: Colors.white,),
    Icon(Icons.emoji_events,size: 30,color: Colors.white)

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height/4,
           decoration: BoxDecoration(
             color: Color(0xFF674AEF),
             borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
           ),
           child: Column(
             children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard_rounded,color: Colors.white,size: 35,),
                    Icon(Icons.notifications,color: Colors.white,size: 35,),
                  ],
                ),

              ),
             Column(
                children: [
                  Text("Hi Programmer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(

                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child:TextFormField(
                        decoration:InputDecoration(
                          prefixIcon: Icon(Icons.search,size: 30,),
                          hintText: "Search here...",
                        
                        ),
                      ),
                    ),
                  )
                ],
              )

             ],
           ),

         ),
          SizedBox(height: 20,),
          GridView.builder(
            itemCount: catName.length,
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
          ), itemBuilder:(context,index){
            return Column(children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: catColor[index],
                ),
                child: catIcon[index],


              ),

              Container(
                child: Text( catName[index],style: TextStyle(fontSize:16,fontWeight: FontWeight.bold
                ),),
              )

            ],);
          })

        ],

      ),
    );
  }
}
