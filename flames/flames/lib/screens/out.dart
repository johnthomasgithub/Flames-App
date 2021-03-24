import 'package:flames/screens/flames.dart';
import 'package:flutter/material.dart';

class Out extends StatefulWidget {

String value;
Out({Key key,@required this.value}) : super(key : key);


  @override
  _OutState createState() => _OutState(value: value);
}

class _OutState extends State<Out> {
  String value;
  _OutState({this.value});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      centerTitle: true,
        title: Text("Blast"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.red,
              Colors.blue
            ])          
         ),        
     ),      
 ),
      body: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [const Color(0xFF915FB5),const Color(0xFFCA436B)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
            ),
        
        ),
      child: Center(child: Text(value,
      style: TextStyle(fontWeight: FontWeight.bold,
      fontSize: 20,
      height: 10,
      color: Colors.white,
      wordSpacing: 3,
      
      ),
      ),
        ),
      ),
    );
  }
}