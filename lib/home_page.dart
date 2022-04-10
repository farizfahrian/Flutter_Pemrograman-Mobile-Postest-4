import 'package:flutter/material.dart';
import 'package:postest2_farizfahrian_1915026033/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halo, Fariz Fahrian"),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Column(
          children: [
            Text(
              "Terlaris",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const <Widget>[
                  ProductList(),
                  ProductList(),
                  ProductList(),
                  ProductList(),
                  ProductList(),
                  ProductList(),
                  ProductList(),
                ],
              ),
            ),
            SizedBox(height: defaultMargin),
            Text(
              "Daftar Sepatu",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ProductList2(),
                    ProductList2(),
                    ProductList2(),
                    ProductList2(),
                    ProductList2(),
                    ProductList2(),
                    ProductList2(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Halo Fariz Fahrian"),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        bottom: defaultMargin,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
            // padding: EdgeInsets.only(top: 20),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                "TERREX URBAN LOW",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/image_shoes.png",
              ),
              Text(
                "Rp2.000.000",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ]),
            decoration: BoxDecoration(
              color: Color(0xffECEDEF),
            ),
            width: 150,
            height: 200),
      ),
    );
  }
}

class ProductList2 extends StatelessWidget {
  ProductList2({Key? key}) : super(key: key);

  @override
  var orientation, size, height, width;
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        bottom: defaultMargin,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                "TERREX URBAN LOW",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/image_shoes.png",
              ),
              Text(
                "Rp2.000.000",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffECEDEF),
          ),
        ),
      ),
      width: width,
      height: 500,
    );
  }
}
