import 'package:flutter/material.dart';

class HotelBooking extends StatelessWidget {
  final String image= "assets/images/hotel.jpg";
  const HotelBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: [

            Image.asset(image,fit: BoxFit.cover,),
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                height: 50,
                width: 350,
                child: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: const Text('Details',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.normal),),
                  leading:  const Icon(Icons.arrow_back,color: Colors.black,),
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Lux Hotel \n Toronto',style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: const Text('8.4/85 reviews',style: TextStyle(color: Colors.white),),
                      ),
                      const Spacer(),
                      IconButton(onPressed: (){},
                        icon: const Icon(Icons.favorite_border),
                        color: Colors.red,)
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Row(
                          children: [
                            Expanded(child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.purple,),
                                    Icon(Icons.star,color: Colors.purple,),
                                    Icon(Icons.star,color: Colors.purple,),
                                    Icon(Icons.star,color: Colors.purple,),
                                    Icon(Icons.star_border_outlined,color: Colors.purple,),
                                  ],
                                ),
                                Text.rich(TextSpan(children: [
                                  WidgetSpan(child: Icon(Icons.location_on)),
                                  TextSpan(text: "8 km to centrum",style: TextStyle(fontSize: 12))
                                ],
                                ),
                                ),
                              ],
                            ),
                            ),
                            Column(children: [
                              Text("\$ 200",style: TextStyle(color: Colors.purple,fontSize: 25),),
                              Text("/per night",style: TextStyle(fontSize: 15.0),),
                            ],)
                          ],
                        ),
                        const SizedBox(height: 20.0,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple ,
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            child:  const Text('Book Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                          ),
                        ),
                        const SizedBox(height: 20.0,),
                        Text('Description'.toUpperCase(),style: const TextStyle(fontWeight: FontWeight.bold),),
                        const SizedBox(height: 16,),
                        const Text("The car parking and the Wi-Fi are always free, so you can stay in touch and come and go as you please."
                            " Conveniently situated in the Pahar Ganj part of New Delhi and NCR,"
                            " this property puts you close to attractions and interesting dining options. Don't leave before paying a visit to the famous Qutub Minar."
                            " This 3-star property features restaurant to make your stay more indulgent and memorable."),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.grey[400],),label:'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,color: Colors.grey[400],),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.grey[400],),label: 'Settings'),
        ],
      ),
    );
  }
}
