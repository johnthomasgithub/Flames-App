import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flames/screens/out.dart';

class FlamesScreen extends StatefulWidget {
  @override
  _FlamesScreenState createState() => _FlamesScreenState();
}

class _FlamesScreenState extends State<FlamesScreen> {
  
   String _myName;
   String _pName;
   var result;
   var bl;
   
   final nameCon =new TextEditingController();
   final pNameCon =new TextEditingController();

static String common(String _myName,String _pName){
  String commonChar="";
		for(int i=0;i<_myName.length;i++)
		{
			for(int j=0;j<_pName.length;j++)
				if(_myName[i]==_pName[j])
					commonChar+=_myName[i];
		}
        for(int i=0;i<commonChar.length;i++)
        {
        	String remove=commonChar[i]+"";
        	_myName=_myName.replaceAll(remove, "");
        	_pName=_pName.replaceAll(remove, "");
        }
    	int strlen=_myName.length+_pName.length;
      String flames = "flames";
        var sb3 = flames;
       
        while(sb3.length!=1)
        {
            var y = strlen%sb3.length; 
            String temp;
            
            if(y!=0)
            {
                temp = sb3.substring(y)+sb3.substring(0, y-1); 
                
            }
            else
            {
                temp = sb3.substring(0, sb3.length-1); 
                
            }
            sb3 = temp;
            
        }
        return sb3[0];
}

static String blast(String result,String _pName){
   switch(result)
        {
            case 'f':
                return "$_pName is Friend to you";
                break;
            case 'l':
                return "$_pName is in love with you";
                break;
            case 'a':
                 return "$_pName has more affection on you";
                break;
            case 'm':
                 return "$_pName going to Marry you";
                break;
            case 'e':
                return "$_pName is enemy to you";
                break;
            case 's':
                 return "$_pName is sibiling you";
                break;
                
        }
  
  return "";
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        title: Text("Flames"),
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
        child: Center(
          
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: nameCon,
                  decoration: InputDecoration(
                    labelText: 'My Name',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Name'),
                ),
                 TextField(
                   textCapitalization: TextCapitalization.sentences,
                  controller: pNameCon,
                  decoration: InputDecoration(
                  labelText: "Crush's Name",
                   labelStyle: TextStyle(color: Colors.white),
                    hintText: "Name",
                    ),
                ),
                RaisedButton(onPressed: (){
                  setState(() {
                  _myName= nameCon.text;
                  _pName=pNameCon.text;
                     });
                  print(_myName);
                  print(_pName);
                  result=common(_myName,_pName);
                  print(result);
                  bl=blast(result,_pName);
                  print(bl);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Out(value: bl,)));
                },
                  child: Text("Submit"),)
              ],),

        ),
        ),
      ),
      
    );
  }
}