import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          useLegacyColorScheme: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.green,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.mobile_friendly_rounded), label: 'Send'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_list_fill), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Scheduled')
          ]),
      floatingActionButton: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(10)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            Text(
              "SEND NEW",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // appBar: NavigationBar(destinations: []),
      body: SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                ButtonsTabBar(
                  // Customize the appearance and behavior of the tab bar
                  backgroundColor: Colors.white,
                  borderWidth: 1,
                  borderColor: Colors.black,
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),

                  // Add your tabs here
                  tabs: const [
                    Tab(
                      child: Text(
                        '            History             ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        '   Transaction Summary  ',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const Divider(),
                Expanded(
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.search),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Search'),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.settings_input_composite),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text(
                                    'May 24, 2022',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 410,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text('14:45 PM'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 30,
                                            backgroundImage: AssetImage(
                                                "assets/MTN-Momo.jpeg"),
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 150,
                                                child: Text(
                                                    'Emmanuel Rockson Kwabena Uncle Ebo'),
                                              ),
                                              Text('024 123 4567')
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                width: 130,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Center(
                                                  child: Text("✅ Successful"),
                                                ),
                                              ),
                                              const Text('GHS 500')
                                            ],
                                          )
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            CircleAvatar(
                                              radius: 20,
                                              child: Icon(
                                                Icons.person,
                                                color: Colors.purple[200],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Personal"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(
                                              Icons.circle,
                                              size: 10,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Cool your heart wai"),
                                          ]),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 410,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text('14:45 PM'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 30,
                                            backgroundImage:
                                                AssetImage("assets/absa.jpg"),
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 150,
                                                child: Text('ABSA Bank'),
                                              ),
                                              Text('024 123 4567')
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                width: 110,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.red[300],
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Center(
                                                  child: Text("❌ Failed"),
                                                ),
                                              ),
                                              const Text('GHS 500')
                                            ],
                                          )
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            CircleAvatar(
                                              radius: 20,
                                              child: Icon(
                                                Icons.person,
                                                color: Colors.purple[200],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Personal"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(
                                              Icons.circle,
                                              size: 10,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Cool your heart wai"),
                                          ]),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 410,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text('14:45 PM'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 30,
                                            backgroundImage:
                                                AssetImage("assets/absa.jpg"),
                                          ),
                                          const Column(
                                            children: [
                                              SizedBox(
                                                width: 150,
                                                child: Text(
                                                    'Emmanuel Rockson Kwabena Uncle Ebo'),
                                              ),
                                              Text('024 123 4567')
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                width: 110,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.red[300],
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Center(
                                                  child: Text("❌ Failed"),
                                                ),
                                              ),
                                              const Text('GHS 500')
                                            ],
                                          )
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(width: 20),
                                              CircleAvatar(
                                                radius: 20,
                                                child: Icon(
                                                  Icons.person,
                                                  color: Colors.purple[200],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text("Personal"),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Icon(
                                                Icons.circle,
                                                size: 10,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text("Cool your heart wai"),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 410,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text('14:45 PM'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 30,
                                            backgroundImage:
                                                AssetImage("assets/absa.jpg"),
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 150,
                                                child: Text('ABSA Bank'),
                                              ),
                                              Text('024 123 4567')
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                width: 110,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.red[300],
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Center(
                                                  child: Text("❌ Failed"),
                                                ),
                                              ),
                                              const Text('GHS 500')
                                            ],
                                          )
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            CircleAvatar(
                                              radius: 20,
                                              child: Icon(
                                                Icons.person,
                                                color: Colors.purple[200],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Personal"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(
                                              Icons.circle,
                                              size: 10,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Cool your heart wai"),
                                          ]),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 410,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text('14:45 PM'),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            radius: 30,
                                            backgroundImage:
                                                AssetImage("assets/absa.jpg"),
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 150,
                                                child: Text('ABSA Bank'),
                                              ),
                                              Text('024 123 4567')
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                width: 110,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.red[300],
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Center(
                                                  child: Text("❌ Failed"),
                                                ),
                                              ),
                                              const Text('GHS 500')
                                            ],
                                          )
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            CircleAvatar(
                                              radius: 20,
                                              child: Icon(
                                                Icons.person,
                                                color: Colors.purple[200],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Personal"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(
                                              Icons.circle,
                                              size: 10,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text("Cool your heart wai"),
                                          ]),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        children: [
                          Center(
                            child: Text('Yo'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
