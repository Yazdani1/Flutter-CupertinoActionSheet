import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Capertino Widget"),
        backgroundColor: Colors.indigo,
      ),

      body: new Container(


            child: Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: new CupertinoButton(
                  child: new Text("Click here"),
                  onPressed: (){
                    shoCuportionDialog(context);
                  },
                  color: Colors.redAccent,

                ),
              ),
            ),


      ),

    );
  }
  
  shoCuportionDialog(BuildContext context){

    showCupertinoModalPopup(
        context: context,
        builder: (context){

          return CupertinoActionSheet(
            title: new Text("First time learning"),
            message: new Text("Cupertion learning things"),
            cancelButton: new CupertinoActionSheetAction(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: new Text("Cancel")
            ),
            actions: <Widget>[

              new CupertinoActionSheetAction(
                  onPressed: (){},
                  child: new Text("First Page",
                  style: TextStyle(fontSize: 22.0,color: Colors.orange),
                  ),
              ),
              
              new CupertinoActionSheetAction(
                  onPressed: (){}, 
                  child: new Text("Second Page")
              ),

              new CupertinoActionSheetAction(
                  onPressed: (){},
                  child: new Text("Third Page",
                  style: TextStyle(fontSize: 22.0,color: Colors.green),
                  )
              ),
              new CupertinoActionSheetAction(
                  onPressed: (){},
                  child: new Text("Fourth Page",
                  style: TextStyle(fontSize: 22.0,color: Colors.purple),
                  )
              )
              
            ],
          );

        }
    );


  }
  
}
