import 'package:flutter/material.dart';
import 'package:flutter_app_test/listMenu.dart';

class Rate extends StatefulWidget{
  static final ROUTER = '/Rate';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RateState();
  }
}

class _RateState extends State<Rate>{
  Widget rate(String name, String image){
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(image),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.black, size: 14),
                          Icon(Icons.star, color: Colors.black, size: 14),
                          Icon(Icons.star, color: Colors.black, size: 14,),
                          Icon(Icons.star, color: Colors.black, size: 14,),
                          Icon(Icons.star, color: Colors.black, size: 14,),
                          Icon(Icons.star_border, color: Colors.black, size: 14,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('4/14/19', style: TextStyle(color: Colors.grey)),
                          )
                        ],
                      ),
                      Text('Tasty food')
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert, color: Colors.black)
            ],
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: (){
            Navigator.pushNamed(
                context,
                ListMenu.ROUTER
            );
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          rate('White Board', 'assets/WhiteBoard1.jpg'),
          rate('Vi vi', 'assets/Vivi1.jpg'),
          rate('Thor', 'assets/Thor.jpg'),
          rate('Taylor', 'assets/Taylor.png'),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/Suka.jpg'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Suka', style: TextStyle(fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.black, size: 14),
                                Icon(Icons.star, color: Colors.black, size: 14),
                                Icon(Icons.star, color: Colors.black, size: 14,),
                                Icon(Icons.star, color: Colors.black, size: 14,),
                                Icon(Icons.star, color: Colors.black, size: 14,),
                                Icon(Icons.star_border, color: Colors.black, size: 14,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('4/14/19', style: TextStyle(color: Colors.grey)),
                                )
                              ],
                            ),
                            Text('Tasty food')
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert, color: Colors.black)
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 30,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: RaisedButton(
                onPressed: (){},
                child: Text('Request to review', style: TextStyle(fontSize: 16, color: Colors.green)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              )
          )
        ],
      ),
    );
  }
}