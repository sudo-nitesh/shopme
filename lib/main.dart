import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop Me',
      theme: ThemeData(primaryColor: Color(0xffa40000), fontFamily: 'Roboto'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            height: 200,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Shop Me',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: 'Search Me',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 220,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DisplayCard(
                    image: 'images/blue-t-shirt.jpg',
                    label: 'Mobile & Electronics',
                    onTap: () => print('Card1 Pressed'),
                  ),
                ),
                Expanded(
                  child: DisplayCard(
                    image: 'images/laptop-coffee.jpg',
                    label: 'IT & Computers',
                  ),
                ),
              ],
            ),
          ),
          BannerCard(cardHeight: 100, image: 'images/white-faced-watch.jpg'),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.deepPurple,
            height: 300,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: DisplayCard(
                          label: 'Menswear',
                          image: 'images/white-faced-watch.jpg',
                        ),
                      ),
                      Expanded(
                        child: DisplayCard(
                          label: 'Womeswear',
                          image: 'images/white-faced-watch.jpg',
                        ),
                      ),
                      Expanded(
                        child: DisplayCard(
                          label: 'Kidswear',
                          image: 'images/white-faced-watch.jpg',
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: DisplayCard(
                          label: 'Fashion Accessories',
                          image: 'images/white-faced-watch.jpg',
                        ),
                      ),
                      Expanded(
                        child: DisplayCard(
                          label: 'Home Furnishing',
                          image: 'images/white-faced-watch.jpg',
                        ),
                      ),
                      Expanded(
                        child: DisplayCard(
                          label: 'Fabric',
                          image: 'images/white-faced-watch.jpg',
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          BannerCard(
            image: 'images/soft-livingroom-sofa.jpg',
            cardHeight: 200,
            cardChild: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    '1 LAKH + FOOTWEAR LISTINGS ON UDAAN',
//                    softWrap: false,
                    textAlign: TextAlign.center,
                  ),
                  Text('+ EXPLORE NOW',
                      style: TextStyle(fontSize: 12, color: Colors.black45))
                ],
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Divider(
                color: Colors.black,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.white,
                  child: Text(
                    'FAST MOVING',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'MONSOON COLLECTION',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 200,
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightBlueAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DisplayCard(
                    label: 'SLIPPERS',
                    image: 'images/black-LED-shoes.jpg',
                  ),
                ),
                Expanded(
                  child: DisplayCard(
                    label: 'SLIPPERS',
                    image: 'images/black-LED-shoes.jpg',
                  ),
                )
              ],
            ),
          ),
          BannerCard(
            cardHeight: 100,
            image: 'images/photography-product-download.jpg',
            cardChild: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    'HOME & KITCHEN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '+ EXPLORE THE ENTIRE SELECTION',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        backgroundColor: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DisplayCard extends StatelessWidget {
  final String image;
  final String label;
  final Function onTap;

  const DisplayCard({this.image, this.onTap, this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text('+ Explore',
                      style: TextStyle(fontSize: 10, color: Colors.black45))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BannerCard extends StatelessWidget {
  final String image;
  final Widget cardChild;
  final double cardHeight;
  final Function onTap;

  BannerCard({this.image, this.cardChild, this.cardHeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: cardHeight,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
        ),
        child: cardChild,
      ),
    );
  }
}
