import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff416d6d),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Color(0xff416d6d)),
        ),
        title: Text("Back", style: TextStyle(color: Color(0xff416d6d))),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xff416d6d),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: size.width * 0.8,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: size.width * 0.7,
                        width: size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Image.asset(
                        "assets/images/pngItem.png",
                        height: size.width * 0.75,
                        width: size.width * 0.75,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Classic Cheetos",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      _Type(),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 80),
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: OutlineButton(
                                      onPressed: () {},
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Icon(Icons.remove),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text("01"),
                                  ),
                                  SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: OutlineButton(
                                      onPressed: () {},
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 50),
                            Column(
                              children: [
                                Text(
                                  "price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "234 SDG",
                                  style: TextStyle(
                                    color: Color(0xff416d6d),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.fromLTRB(40, 0, 40, 04),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(
                    color: Color(0xff416d6d),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _Type() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
            alignment: Alignment.topLeft,
            child: Text(
              "Flavors",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 5),
          TypeList(),
        ],
      ),
    );
  }
}

class TypeList extends StatefulWidget {
  @override
  _TypeListState createState() => _TypeListState();
}

class _TypeListState extends State<TypeList> {
  List category = ["Flamin Hot", "Wavy Mango Salsa", "Ketchup", "Cheese Onion", "Lemon"];
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
