import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
void main() 
{

 runApp(MyApp());
//debugPaintSizeEnabled=true;
}

class MyApp extends StatelessWidget {
//MyApp(){
  
//}
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Help(title: 'CvDragon Help center'),
    );
  }
}

class Help extends StatefulWidget {
  Help({Key key, this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Help> {

  TextEditingController name = TextEditingController();
 TextEditingController email = TextEditingController();
 TextEditingController phone = TextEditingController();
 TextEditingController query = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
 
    return Scaffold(
      
      appBar: AppBar(
       title: Text('CvDragon Help Center'),
      ),
          body: SingleChildScrollView(
      child:Container(
        
        padding: EdgeInsets.all(20.0),
         color: Colors.transparent,
        child: Column(
          children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.topLeft,
           child: Text('Name',
            style: TextStyle(
         fontSize: 20.0,
         fontWeight: FontWeight.bold,
              

              ),   
              ),
            ),
          ),
             // 
             TextField(
               controller: name,
               keyboardType: TextInputType.text,
               decoration: InputDecoration(
                 border:OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)) ,
                 )
               ),
             ),
           SizedBox(height: 20.0,),
          
            Container(
            child: Align(
              alignment: Alignment.topLeft,
           child: Text('Email',
            style: TextStyle(
         fontSize: 20.0,
         fontWeight: FontWeight.bold,
              

              ),   
              ),
            ),
          ),
           TextField(
             controller: email,
             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
               )
             ),
           ),
           SizedBox(height: 20.0,),
           
        Container(
            child: Align(
              alignment: Alignment.topLeft,
           child: Text('Phone',
            style: TextStyle(
         fontSize: 20.0,
         fontWeight: FontWeight.bold,
              

              ), 
                ),
            ),
          ),
          TextField(
            controller: phone,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border:OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              )
            ),
          ),
           SizedBox(height: 20.0,),
       Container(
      
        // width: 50.0,
            child: Align(
              alignment: Alignment.topLeft,
           child: Text('Quries',
            style: TextStyle(
         fontSize: 20.0,
         fontWeight: FontWeight.bold,
              

              ),         
                   ),
            ),
          ),
          TextFormField(
            controller: query,
            
            keyboardType: TextInputType.multiline,
                  maxLines: null,
          decoration:InputDecoration (
             contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
           border: OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(10.0)),
           )
          ),
          ),
          SizedBox(height: 20.0,),
          Container(
            height: 30.0,
            
            child: RaisedButton(
              onPressed: (){
                setState(() {
                  _reset();
                });
              },
              child: Text('Submit',
               style: TextStyle(
         fontSize: 20.0,
         color: Colors.blueGrey,
         fontWeight: FontWeight.bold,
              

              ),   
             ),
            ),
          )
          //style: Theme.of(context).textTheme.display1,
          //   ),
          //    SizedBox(height: 15.0,),
          //    Text('Phone'),
          //    TextField(),
          //   //  SizedBox(height: 15.0,),
          //    TextField(),
          //  //  SizedBox(height: 15.0,),
          //    Text('Quries'),
          //    TextField(),
          
          
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
       
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
       ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
   void _reset(){
        name.text = '';
        email.text= '';
         phone .text = '';
         query.text = '';
  }
  
}
