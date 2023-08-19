import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowItemsWidget extends StatelessWidget{

  @override
 Widget build(BuildContext context) {
    
   return Column(

    
   

     
       children: [
         Padding(
           padding: const EdgeInsets.only(bottom:20.0),
           child: Text('Advertisement',
                 style: 
                 TextStyle(
            color: Colors.black,
            fontFamily: 'ProductSans',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            
                 ),
                 ),
         ),
         SingleChildScrollView(
     scrollDirection: Axis.horizontal,

           child: Row(
         
            children: [
             
 for(int i=1;i<5;i++)
        Container(
          margin: EdgeInsets.only(left: 10,top:10, bottom: 10),
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 180,
          decoration: BoxDecoration(
            color: Color(0xFFF5F9FD),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF475269).withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 1,
              )
            ],
          ),
         
          child: Row(
            children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top:20, right: 70),
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFF475269),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Image.asset(
                "assets/$i.png",
                height: 150,
                width: 150,
                fit: BoxFit.contain ,
                ),
              ],
            ),











                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("NIKE",
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize:  23,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      SizedBox(height: 3,),
                      Text("Shop Name: ",
                      style: TextStyle(
                          color: Color(0xFF475269).withOpacity(0.8),
                          fontSize: 16,
         
         
                      ),
                      ),

Text('Floor: 1'),
    




                      Spacer(),
                      Row(
                      children: [
                        Text("Rs 1000",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          padding:EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF475269),
                            borderRadius: BorderRadius.circular(10),
         
                          ),
                          child: Icon(
                            CupertinoIcons.cart_fill_badge_plus,
                            color: Colors.white,
                            size: 25 ,
                          ),
                          ),
                      ],
                      ),
                    ],)
                  
                  )
              
                  ],
                ),
              ),
            ],
             
             
           ),
         ),
     
       ],
   );
  }
}