import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:geofence/widgets/AllItemsWidget.dart';
import 'package:geofence/widgets/RowItemsWidgets.dart';


class UserScreen extends StatefulWidget {
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
   int _currentindex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(leading: Drawer(),),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //Custom App Bar
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF475269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Icon(
                      Icons.sort,
                      size: 30,
                      color: Color(0xFF475269),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF475269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          )
                        ]),
                    child: badges.Badge(
                      badgeStyle:
                          badges.BadgeStyle(badgeColor: Colors.redAccent),
                      badgeContent: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      child: Icon(
                        Icons.notifications,
                        size: 30,
                        color: Color(0xFF475269),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 26.5,
                    color: Color(0xFF475269),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RowItemsWidget(),
            SizedBox(
              height: 20,
            ),

            Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'ProductSans',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            AllItemsWidget(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'More Items',
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 16,
                  ),
                ),
                Icon(Icons.arrow_circle_right_outlined),
              ],
            ),
         
     
         
          ],
       ),
      )),
      bottomNavigationBar: BottomNavigationBar(
currentIndex: _currentindex,
type: BottomNavigationBarType.fixed,
iconSize: 28,
selectedFontSize: 14,
backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
             
 ),

  BottomNavigationBarItem(
            icon: Icon(Icons.favorite,),
            label: 'Favorite',

 ),

 BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag,),
            label: 'Cart',

 ),

 BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: 'Profile',
            

 ),


        ],


      onTap: (index) {
        setState(() {
          _currentindex = index;
        });
      },
      ),
    );
  }
}
