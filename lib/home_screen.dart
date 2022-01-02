import 'package:flutter/material.dart';
import 'package:pet_app/configuration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      color: Colors.grey[200],
      child: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                isDrawerOpen = false;
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                              });
                            },
                            icon: const Icon(Icons.arrow_back_ios))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                isDrawerOpen = true;
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                              });
                            },
                            icon: const Icon(Icons.menu)),
                    Column(
                      children: [
                        const Text('Location'),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryGreen,
                            ),
                            const Text('Ukraine'),
                          ],
                        )
                      ],
                    ),
                    const CircleAvatar()
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.search),
                    Text('Search pet to adopt'),
                    Icon(Icons.settings)
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              height: 50,
                              width: 50,
                              color: Colors.grey[700],
                            ),
                          ),
                          Text(categories[index]['name']),
                        ],
                      );
                    }),
              ),
              Container(
                height: 240,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: shadowList),
                            margin: const EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Image.asset('images/pet-cat2.png'),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: ListView(
                        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Sola',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                Icon(Icons.where_to_vote)
                              ],
                            ),
                            const SizedBox(height: 8,),
                            const Text('Abyssinian Cat',style: TextStyle(
                              fontSize: 14
                            ),),

                            const SizedBox(height: 8,),
                            const Text('2 years old',style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),),
                            const SizedBox(height: 8,),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Distance 3.6 km')
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            
              Container(
                height: 240,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: shadowList),
                            margin: const EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Image.asset('images/pet-cat1.png'),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Sola',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                Icon(Icons.where_to_vote)
                              ],
                            ),
                            const SizedBox(height: 8,),
                            const Text('Abyssinian Cat',style: TextStyle(
                              fontSize: 14
                            ),),

                            const SizedBox(height: 8,),
                            const Text('2 years old',style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),),
                            const SizedBox(height: 8,),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Distance 3.6 km')
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            
            ],
          ),
        ],
      ),
    );
  }
}
