import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B9A8B),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: Image.asset('assets/person.jpg', fit: BoxFit.cover,)
                              ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Welcome', style: TextStyle(fontSize: 16, color: Colors.white),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Jack Willson', style: TextStyle(fontSize: 22, color: Colors.white),),
                                    Icon(Icons.notification_add_rounded,color: Colors.white, size: 28,)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text('Discover the Best Place', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                      Text('To Travel', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search Location',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Popular', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                          TextButton(onPressed: (){

                          }, child: Text('See all', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16),))
                        ],
                      ),
                      // SizedBox(height: 10,),
                      Container(
                        height: 230,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                                  child: Container(
                                    width: 230,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Image.asset('assets/intro.png', fit: BoxFit.cover,),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                    height: 65,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Text('abcd', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.location_city_outlined),
                                                Text('marine Beach', style: TextStyle(fontSize: 14),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star_border_outlined),
                                                Text('4.9', style: TextStyle(fontSize: 14),),
                                              ],
                                            )
                                          ],
                                        )
                                      ],),
                                    ),
                                ),
                                  ))
                              ],
                            );
                          } ),
                      )
                    ],
                  ),
                ),
              )
              )
          ],
        ),
      ),
    );
  }
}