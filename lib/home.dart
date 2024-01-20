import 'package:educational_app/course_Screen.dart';
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
  List <Image> imglist=[
    Image(
        image: NetworkImage("https://static-00.iconduck.com/assets.00/flutter-icon-826x1024-4ksxnd3g.png")),
    Image(
        image: NetworkImage("https://static-00.iconduck.com/assets.00/brand-react-native-icon-256x232-2upxny7h.png")),
    Image(
        image: NetworkImage("https://static-00.iconduck.com/assets.00/c-icon-228x256-9y3563zi.png")),
    Image(
        image: NetworkImage("https://static-00.iconduck.com/assets.00/python-icon-512x509-pyuo2h5v.png")),
    Image(
        image: NetworkImage("https://static-00.iconduck.com/assets.00/java-icon-378x512-w60vlu77.png")),
    Image(
        image: NetworkImage("https://static-00.iconduck.com/assets.00/c-sharp-c-icon-1822x2048-wuf3ijab.png")),




  ];
  List imgname=[
    "Flutter",
    "React Native",
    "C++",
    "python",
    "Java",
    "C#",

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
                  SizedBox(height: 5,),
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
              ),

            ],);
          }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Courses",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30),),
                Text("See all",style: TextStyle(fontWeight:FontWeight.normal,fontSize: 20),),
              ],
            ),

          ),
         GridView.builder(
           itemCount: imglist.length,
             shrinkWrap: true,

             physics: NeverScrollableScrollPhysics(),
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

           crossAxisCount: 2,
           mainAxisSpacing: 10,
           crossAxisSpacing: 10,
              // childAspectRatio: 1.1,
          childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(3*240)
         ), itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10 ),
                 child: InkWell(
                   onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Course_Screen())),
                   child: Container(
                     // width: 40,
                     // height: 60,
                     child: Padding(
                       padding: const EdgeInsets.only(left: 58.0,right: 58,top: 50),
                       child: Column(
                         children: [
                           imglist[index],
                           SizedBox(height: 10,),
                           Text(imgname[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)
                   
                         ],
                       ),
                     ),
                   
                     decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(.2),
                       borderRadius: BorderRadius.circular(40),
                     ),
                   
                   ),
                 ),
               );

         }),


        ],

      ),
    );
  }
}
