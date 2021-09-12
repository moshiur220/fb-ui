import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "facebook",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 25,
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.message_outlined,
                              color: Colors.black,
                              size: 25,
                            )),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.blue,
            tabs: [
              const Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                child: Row(
                  children: [
                    const Icon(Icons.video_collection_outlined),
                    Container(
                      child: const Center(
                          child: Text(
                        '9',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
                //
              ),
              const Tab(icon: Icon(Icons.home_outlined)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
