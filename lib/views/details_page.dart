import 'package:flutter/material.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Container(
                   margin: EdgeInsets.only(left: 20),
                   width: 60,
                   height: 60,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                         color:Colors.white,

                   ),
                   child: Icon(Icons.arrow_back,size: 30,),
                 ),
                SizedBox(width: 50),

                Text('Car Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(width: 50,),
                Container(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.more_vert),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:Colors.white,


                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Lamborghini',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Urus Performante- 2023',style: TextStyle(color: Colors.grey,fontSize: 16),),
            ),
            SizedBox(height: 20),

            Center(child: Image(
              image: AssetImage(
                'assets/bmw1.jpeg',
              ),
            ),
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left :20.0),
              child: Text('Features Highlights',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 20),

            Row(

              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  margin: EdgeInsets.only(left: 10),
                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width:50,
                        height: 40,
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,color: Colors.grey.withOpacity(0.3)
                        ),
                          child: Icon(
                            Icons.person_2,
                            size:20,
                          ),
                      ),
                      SizedBox(height: 10),

                      Text('Capacity'),
                      SizedBox(height: 4),
                      Text('4 Seats',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

                    ],
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  padding:EdgeInsets.only(top:10),

                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                borderRadius: BorderRadius.circular(20)

                  ),
                  child: Column(
                    children: [
                      Container(

                          width:50,
                        height: 40,
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                              color:Colors.grey.withOpacity(0.3),
                        ),
                          child: Icon(
                            Icons.bolt,
                            size: 30,
                          ),
                      ),
                      SizedBox(height: 10),

                      Text('Power'),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('657',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text('Hp')
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(width: 10,),

                Container(
               padding: EdgeInsets.only(top: 10),
                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                   borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Container(
                          width:50,
                          height:40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         color: Colors.grey.withOpacity(0.3)
                        ),
                          child: Icon(
                              Icons.shutter_speed,
                          ),
                      ),
                      SizedBox(height: 10),
                      Text('Top Speed'),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('301',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text('Km/h'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(

              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  margin: EdgeInsets.only(left: 10),
                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width:50,
                        height: 40,
                        decoration:BoxDecoration(
                            shape: BoxShape.circle,color: Colors.grey.withOpacity(0.3)
                        ),
                        child: Icon(
                          Icons.local_gas_station_rounded,
                          size:20,
                        ),
                      ),
                      SizedBox(height: 10),

                      Text('Fuel Type'),
                      SizedBox(height: 4),
                      Text('Petrol',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

                    ],
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  padding:EdgeInsets.only(top:10),

                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)

                  ),
                  child: Column(
                    children: [
                      Container(

                        width:50,
                        height: 40,
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                          color:Colors.grey.withOpacity(0.3),
                        ),
                        child: Icon(
                          Icons.car_rental_outlined,
                          size: 30,
                        ),
                      ),
                      SizedBox(height: 10),

                      Text('Engine'),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('TB V8',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(width: 10,),

                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width:50,
                        height:40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.3)
                        ),
                        child: Icon(
                          Icons.crop_square_outlined,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Cubic Feet'),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('21.7',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Rent Price:',style: TextStyle(fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    children: [
                      Text('\$500',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text('/Daily')
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),

                  width: 60,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                          shape:BoxShape.circle,
                    ),
                    child: Icon(
                        Icons.bookmark_border,
                    ),
                ),
                Container(
                  width: 300,
                  height:60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text('Book Car Now',style: TextStyle(color: Colors.white),)),
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}
