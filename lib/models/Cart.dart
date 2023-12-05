import 'package:flutter/material.dart';
import 'package:pets/models/Text.dart';

import 'Button.dart';
import 'End.dart';

class Cart extends StatefulWidget {
   Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int num=0;
  void _increment(){
    setState(()
    {
      num++;
    });
  }

  void _decrement(){
    setState(()
    {
      num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    mainText('Cart'),
                    Icon(Icons.notifications_none),
                  ],
                ),
                SizedBox(height:30),
                SizedBox(height: 200,width: double.infinity,
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/Images/image.png',height: 60,width: 80,),
                          Column(
                            children: [
                              Text('Bubble Up Dog grooming',style: TextStyle(fontSize: 15),),
                              Text('\$ 12.25',style: TextStyle(color: Color(0xff8F6FC2),fontSize: 10),)
                            ],
                          ),

                          SizedBox(width: 20,),
                          Row(
                            children: [
                              Container(
                                height: 29,
                                width: 105,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20)),
                                    border:
                                    Border.all(color: Colors.black54)),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(onPressed: (){
                                      _decrement();
                                    },
                                        icon:Icon(Icons.remove), iconSize:4.25),
                                    Text('$num',
                                        style: TextStyle(fontSize: 12)),
                                    IconButton(onPressed: (){
                                      _increment();
                                    },
                                        icon:Icon(Icons.add), iconSize:4.25),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height:20),
                Text('Payment Summary',style: TextStyle(color: Color(0xff8F6FC2),fontSize: 15,fontWeight: FontWeight.bold),),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Basket Total',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black38),textAlign: TextAlign.left,),
                    Text('\$ 12.25',style: TextStyle(color: Color(0xff8F6FC2),fontSize: 13,fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery fee',style: TextStyle(color: Color(0xff8F6FC2),fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                    Text('\$ 0.75',style: TextStyle(color: Color(0xff8F6FC2),fontSize: 13,fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
                  ],
                ),
                SizedBox(height:20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total amount',style: TextStyle(color: Color(0xff8F6FC2),fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                    Text('\$ 13.0',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
                  ],
                ),
                SizedBox(height:30),
                ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  End()));
                  },
                  child: Text(
                    'Checkout', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w700),textAlign: TextAlign.center,
                  ),
                ),


              ],
            ),
          ),
        ),

    );
  }
}
