import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
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
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0.0)),
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 50),
            _appBarContainer(),
            _searchContainer(),
            CategoryList(),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("details");
                            },
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                              width: 160,
                              height: 180,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Image.asset("assets/images/pngItem.png"),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20.0),
                            width: 160,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset("assets/images/pngItem.png"),
                          ),
                          Container(
                            padding: EdgeInsets.all(20.0),
                            width: 160,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.brown.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset("assets/images/pngItem.png"),
                          ),
                          Container(
                            padding: EdgeInsets.all(20.0),
                            width: 160,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset("assets/images/pngItem.png"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryContainerWith(String text) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              letterSpacing: 1,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryContainer(String text) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              letterSpacing: 1,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w200,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            width: 30,
            height: 2,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget _searchContainer() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xff416d6d),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.white),
          hintText: "Search your favourite snake",
          hintStyle: TextStyle(color: Colors.white),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _appBarContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isDrawerOpen
              ? IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Color(0xff416d6d)),
                  onPressed: () {
                    setState(() {
                      xOffset = 0;
                      yOffset = 0;
                      scaleFactor = 1;
                      isDrawerOpen = false;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.menu, color: Color(0xff416d6d)),
                  onPressed: () {
                    setState(() {
                      xOffset = 230;
                      yOffset = 150;
                      scaleFactor = 0.6;
                      isDrawerOpen = true;
                    });
                  },
                ),
          Image.asset("assets/images/pngItem.png", height: 50, width: 50),
          IconButton(
            icon: Icon(
              Icons.notifications_none_rounded,
              color: Color(0xff416d6d),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List category = ["All", "Lay'z", "Popchips", "Pringles", "Doritos", "Uncle"];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Color(0xff416d6d)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              category[index],
              style: TextStyle(
                color: index == selectedIndex ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
