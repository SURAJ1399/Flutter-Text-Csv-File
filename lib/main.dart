
import 'package:Boongg/formpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Nunito"
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Container(
          child:Splashpage(),
        ) ,),
     
    );
  }
}
class Splashpage extends StatefulWidget {
  Splashpage({Key key}) : super(key: key);

  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
decoration: BoxDecoration(
  color: Colors.white
),
       child: Column(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: <Widget>[    
                     
                     Container(
                child: Column(
                  children: <Widget>[



                 Container(
                   margin: EdgeInsets.only(top:100),
                    child: 
            Text("Applicaton Form",style:TextStyle(color: Color(0xFFB40284A),fontSize: 28)),
            


           
         

                 ),
                 SizedBox(height: 10,),
                   Container(
                   margin: EdgeInsets.only(top:20),
                    child: 
            Text("This is Simple task for Boongg Flutter Intern Position.Task is to save user data locally in any exportable format."
                    ,textAlign: TextAlign.center,style:TextStyle(color: Color(0xFFB40284A),fontSize: 16)),
    


           
         

                 ), 
            
           
                  ],
                ),

                     ),
  Container(
  
             child:Center(
               child:Image.asset("assets/images/splash.jpg"),
             )
           ) ,
            Container(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                   
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormPage()));
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(32),
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFB40284A),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
              )                    
         ],
       )
       ,
    );
  }
}
