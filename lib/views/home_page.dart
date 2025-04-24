import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        leading: Container(
          margin: EdgeInsets.only(left: 10),

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

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            Container(
              width: 230,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.location_on),
                  Text(
                    'Abuja,Nigeriaa',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
          SizedBox(width: 40),
            
          Container(
            width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle

              ),
              child: Icon(Icons.notifications))
          ],
          

        ),
        // actions: [
        //   Container(
        //     padding: EdgeInsets.all(20),
        //     width: 20,
        //     height: 40,
        //     decoration: BoxDecoration(
        //         color: Colors.red,
        //
        //         shape: BoxShape.circle
        //     ),
        //   )
        // ],
      ),
    );
  }
}
