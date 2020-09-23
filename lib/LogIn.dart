import 'package:flutter/material.dart';
import 'package:flutter_app_test/food.dart';
import 'package:flutter_app_test/listMenu.dart';

class LogIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: double.infinity,
                height: 300,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image(
                          image: AssetImage('assets/Statham.jpg'),
                          fit: BoxFit.cover,
                          width: 120,
                          height: 180,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Smart move', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'get your favorite food in a single place',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(Icons.more_horiz, color: Colors.black, size: 40,),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'By tapping Log In, you are agree with our', style: TextStyle(color: Colors.grey)),
                          TextSpan(text: 'Terms of', style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline)),
                        ]
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Service', style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline)),
                          TextSpan(text: ' and ', style: TextStyle(color: Colors.grey)),
                          TextSpan(text: 'Privacy Policy', style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline)),
                        ]
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                height: 40,
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.pushNamed(
                        context,
                        ListMenu.ROUTER
                    );
                  },
                  child: Text(
                    'LOG IN WITH FACEBOOK',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'We don\'t post anything on facebook',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.expand_more, color: Colors.grey)
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}