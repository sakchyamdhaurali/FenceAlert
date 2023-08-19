import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class AllItemsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    

    return GridView.count(
    
      crossAxisCount: 2,
      childAspectRatio: 1/1,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for(int i=4;i<8;i++)
        Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 10),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFFF5F9FD),
            borderRadius: BorderRadius.circular(10),
             boxShadow: [BoxShadow(
              color: Color(0xFF475269).withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 1,
             ),
             
             ],
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                 
                },
               
                  
                  child: Image.asset(
                    "assets/$i.png",
                    height: 130,
                    width: 130,
                  ),
                  
              ),
            

Padding(
  padding: EdgeInsets.symmetric(vertical: 6),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
        
       



  ]),
),

            ],
          ),
        ),
      ],
    );
    
  
  }
}