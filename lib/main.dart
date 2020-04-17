import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
        color: Colors.green[600],
        child: Column(

          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.network('https://pngimage.net/wp-content/uploads/2018/05/avatar-images-png-9.png'),
                  radius: 35,
                ),
                title: Text('You are Safe',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
              ),
            ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                height: 460,
                margin: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0,bottom: 10),
                //color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("We Recommend:",style: TextStyle(fontWeight: FontWeight.w700,),),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                color: Colors.lightGreen[200],
                                child: Image.asset('images/quarantine.png'),
                                width: 180,
                                height: 120,
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          Expanded(child: Text('Maintain Social Distance',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.0),))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                color: Colors.lightGreen[200],
                                child: Image.asset('images/thermometer.png'),
                                width: 180,
                                height: 120,
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          Expanded(child: Text('Take Self Assesment Test',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.bold,letterSpacing: 1.0)

                          ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: Container(
                                color: Colors.lightGreen[200],
                                child: Image.asset('images/1.png'),
                                width: 180,
                                height: 120,
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          Expanded(child: Text('Check App regularly for updates',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.bold,letterSpacing: 1.0)

                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),

        ],
        ),
      ),
    );
  }
}
