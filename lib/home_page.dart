import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listItem = [
    "assets/item_image/img1.jpg",
    "assets/item_image/img2.jpg",
    "assets/item_image/img3.jpg",
    "assets/item_image/img4.jpg",
    "assets/item_image/img1.jpg",
    "assets/item_image/img2.jpg",
    "assets/item_image/img3.jpg",
    "assets/item_image/img4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                height: 36,
                width: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800],
                ),
                child: Center(
                  child: Text(
                    "7",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          "Apple Products",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/item_image/img3.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.3),
                            Colors.black.withOpacity(.1)
                          ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Lifestyle sale",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        child: InkWell(
                          child: Center(
                            child: Text(
                              "Shop Now",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    children:
                        listItem.map((image) => _itemList(image)).toList()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemList(String image) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.heart_broken,
              color: Colors.red,
              size: 36,
            )
          ],
        ),
      ),
    );
  }
}
