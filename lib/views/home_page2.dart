import 'package:flutter/material.dart';
class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
        width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle
        
          ),
          child: Icon(
            Icons.person,
          ),
        ),
                  Container(
                    width: 230,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(50)

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.location_on),
                        Text(
                          'Abuja,Nigeria',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.5),

                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down_sharp)
                      ],
                    ),
                  ),

                SizedBox(width: 10),

                Container(
                  margin: EdgeInsets.only(right: 10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle

                    ),
                    child: Icon(Icons.notifications,
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
          ],
        ),
      ),
    );
  }
}
