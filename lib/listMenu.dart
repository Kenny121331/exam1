import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/food.dart';
import 'package:flutter_app_test/menu.dart';

class ListMenu extends StatelessWidget{
  static final ROUTER = '/ROUTER';
  Widget text(String text, double size, Color colors){
    return Text(
      text,
      style: TextStyle(fontSize: size, color: colors),
    );
  }
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.add_shopping_cart, color: Colors.grey),
        title: Row(
          children: [
            text('Manad, sunder nagar', 14, Colors.grey),
            Icon(Icons.expand_more, color: Colors.black)
          ],
        ),
        actions: [
          Icon(Icons.search, color: Colors.black)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              width: double.infinity,
              height: 450,
              child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(menu[index].image),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 300,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    text(menu[index].name, 14, Colors.black),
                                    Icon(Icons.star_border, color: Colors.black)
                                  ],
                                ),
                                text('Lunch Box', 14, Colors.grey),
                                text('Mildly spiced indian buttermilk with mint flavor...', 14, Colors.grey),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.star, color: Colors.black),
                                              text('${menu[index].star}', 16, Colors.black)
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
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 30,
                                        color: Colors.red,
                                      ),
                                      Container(
                                          width: 130,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.green),
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child: RaisedButton(
                                            onPressed: (){
                                              Navigator.pushNamed(
                                                  context,
                                                  Food.ROUTER,
                                                  arguments: Menu(
                                                    image: menu[index].image,
                                                    name: menu[index].name,
                                                    star: menu[index].star
                                                  )
                                              );
                                            },
                                            child: text('Add +', 16, Colors.green),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.keyboard, color: Colors.black),
                    text('Explore', 14, Colors.black)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.border_bottom, color: Colors.grey),
                    text('Cart', 14, Colors.grey)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.account_circle, color: Colors.grey),
                    text('Explore', 14, Colors.grey)
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}