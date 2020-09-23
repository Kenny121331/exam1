import 'package:flutter/material.dart';
import 'package:flutter_app_test/listMenu.dart';
import 'package:flutter_app_test/menu.dart';
import 'package:flutter_app_test/rate.dart';

class Food extends StatelessWidget{
  String image;
  String name;
  double star;
  Food({this.image, this.name, this.star});

  Widget text(String text, double size, Color colors){
    return Text(
      text,
      style: TextStyle(fontSize: size, color: colors),
    );
  }
  static final ROUTER = '/Food';
  @override
  Widget build(BuildContext context) {
    final Menu args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage(args.image),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 250,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.keyboard_backspace, color: Colors.white),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                      Icon(Icons.android, color: Colors.white)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(args.name, 14, Colors.black),
                        Icon(Icons.star_border, color: Colors.black)
                      ],
                    ),
                  ),
                  text('Lunch Box', 14, Colors.grey),
                  text('Mildly spiced indian buttermilk with mint flavor...', 14, Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                text('${args.star}', 16, Colors.black)
                              ],
                            ),
                            text('500+ rating', 14, Colors.grey),
                          ],
                        ),
                        Column(
                          children: [
                            text('20-30 mins', 16, Colors.black),
                            text('Delivery time', 14, Colors.grey),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.add_shopping_cart, color: Colors.black),
                                text('300', 16, Colors.black)
                              ],
                            ),
                            text('Delivery time', 14, Colors.grey),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 20,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: text('See all review', 14, Colors.green),
                        ),
                      ],
                    ),
                  ),
                  text('Deliverying Food to', 14, Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text('Home (B 701, sunder nagar, malad...)', 16, Colors.black),
                      text('CHANGE', 16, Colors.green)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      color: Colors.grey,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.copyright, color: Colors.black),
                              text('Apply Promoto Code', 16, Colors.black)
                            ],
                          ),
                          Icon(Icons.arrow_right, color: Colors.black)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    )
                  ),
                  //borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0),)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: RaisedButton(
                          color: Colors.green,
                          onPressed: (){
                            Navigator.pushNamed(
                                context,
                                Rate.ROUTER
                            );
                          },
                          child: text('Add +', 16, Colors.white),
                        )
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}