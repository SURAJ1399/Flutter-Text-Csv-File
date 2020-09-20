import 'package:flutter/material.dart';
class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  GlobalKey<FormState> formkey=GlobalKey<FormState>();
  void validate(){
    if(formkey.currentState.validate())
    {

    }
  }
  String validatetext(value){
 if(value.isEmpty)
                   return "Required";
                   else
                   return null;
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(padding: EdgeInsets.all(25),
       child: SingleChildScrollView(
                child: Center(
           child: Form(
             key: formkey,
             child: 
          Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextFormField(
                
                 decoration: InputDecoration(
                   
                   border: OutlineInputBorder(
                      borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Name"
                   
                 ),
                 validator:validatetext,
               ),
              
               Padding(padding: EdgeInsets.only(top:20)),
                
               TextFormField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Father's Name",
                   
                
                  
                 ),
            validator:validatetext,
               ),
                Padding(padding: EdgeInsets.only(top:20)),
                
               TextFormField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Aadhaar Card Name"
                  
                 ),
                     validator:validatetext,
               ),
                Padding(padding: EdgeInsets.only(top:20)),
                
               TextFormField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Residential Address"
                  
                 ),
               ),
                Padding(padding: EdgeInsets.only(top:20)),
                
               TextFormField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Family Details"
                  
                 ),
               ),
                Padding(padding: EdgeInsets.only(top:20)),
                
               TextFormField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Origin"
                  
                 ),
               ),
                Padding(padding: EdgeInsets.only(top:20)),
                
               TextFormField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Destination"
                  
                 ),
               ),
                Padding(padding: EdgeInsets.only(top:20)),
                
               TextFormField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Route"
                  
                 ),
               ),
                Padding(padding: EdgeInsets.only(top:20)),
                
               TextFormField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color:Color(0xFFB40284A))

                   ),
                   labelText: "Monthly Income"
                  
                 ),
               ),
                  Container(
                  child: GestureDetector(
                    onTap: () {
                     validate();
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.all(32),
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFB40284A),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),
                        ),
                      ),
                    ),
                  ),
                )  

            ],
          )
           ,),
         ),
       )
    ),);
  }
  
}
