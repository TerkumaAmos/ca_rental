import 'package:flutter/material.dart';
import 'package:car_rental_app/global_variables.dart';


import '../widgets/car_card.dart';
import '../widgets/global_variables.dart';
class HomePage2 extends StatefulWidget {
  final Map<String, Object> product;


  const HomePage2({super.key, required this.product});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int _selectedIndex =0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex =index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                CircleAvatar(
                  radius: 30,

                    backgroundImage: AssetImage('assets/circle.png')),

                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 230,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(50)

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.location_on_outlined,color: Colors.black),
                        Text(
                          'Abuja, Nigeria',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.7),

                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down_sharp,color: Colors.black)
                      ],
                    ),
                  ),

                SizedBox(width: 10),

                Container(
                  margin: EdgeInsets.only(right: 10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle

                    ),
                    child: Icon(Icons.notifications_none_sharp,color: Colors.black,
                    ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Container(
              alignment: Alignment.center,
              width: 365,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search here...',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5)
                    ),
                    prefixIcon: Icon(Icons.search,size: 25,
                    ),
                ),
              ),
            ),
              SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                  child: Text('Top Brands',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
              ),
              SizedBox(width: 200),
              Text('See All'),
              Icon(Icons.navigate_next)
            ],
            ),
            SizedBox(height: 20),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    elevation: 10,
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // More rounded corners
                    ),
                    //CircleAvatar
                    label: Text(
                      'All',
                      style: TextStyle(fontSize: 16),
                    ), //Text
                  ),
                  Chip(
                    elevation: 15,
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.white,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // More rounded corners
                    ),
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/bmw.png",
                      ), //NetworkImage
                    ), //CircleAvatar
                    label: Text(
                      'BMW',
                      style: TextStyle(fontSize: 16),
                    ), //Text
                  ),
                  Chip(
                    elevation: 20,
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // More rounded corners
                    ),
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/tesla1.png"),
                    ), //CircleAvatar
                    label: Text(
                      'Tesla',
                      style: TextStyle(fontSize: 16),
                    ), //Text
                  ),
                  Chip(
                    elevation: 20,
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // More rounded corners
                    ),
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/benz.jpeg"),
                    ), //CircleAvatar
                    label: Text(
                      'Mercedez',
                      style: TextStyle(fontSize: 16),
                    ), //Text
                  ),


                ],
              ),
            SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: products.length, // Display the card 4 times
            itemBuilder: (context, index) {
              final product = products[index];
              return CarCard(
                title: product['title'] as String,
                price: product['price'] as double,
                image: product['imageURL'] as String,
                subtitle: product['subtitle']as String,


              );
            },
          ),
        ),

          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,

        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.car_rental),label: 'Rental'),


          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourite'),

          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),

        ],
      ),

    );
  }
}
