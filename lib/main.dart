import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home()
    )
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aarogya Setu", style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Icon(Icons.share,color: Colors.black,),
          Container(width: 10.0,),
          Icon(Icons.info_outline,color: Colors.black,),
          Container(width: 10.0,),
          Icon(Icons.language,color: Colors.black,),
          Container(width: 10.0,),
        ],
      ),
      body: Container(
        color: Colors.green[700],
        child: Container(
          margin: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("We Recommended:",style: TextStyle(fontWeight: FontWeight.w700),),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Container(
                      color: Colors.lightGreen[200],
                      child: Image.asset('images/quarantine.png'),
                    )),
                    SizedBox(width: 20.0,),
                    Expanded(child: Text('Maintain Social Distance',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Image.asset('images/thermometer.png')),
                    SizedBox(width: 20.0,),
                    Expanded(child: Text('Take Self Assesment Test',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
