import 'package:flutter/material.dart';
import 'package:postest2_farizfahrian_1915026033/checkout.dart';
import 'package:postest2_farizfahrian_1915026033/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  List<Widget> pages = <Widget>[
    LandingPage(),
    LandingPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

// class Header extends StatelessWidget {
//   const Header({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//   }
// }

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halo, Fariz Fahrian"),
      ),
      body: Container(
        child: ListView(children: <Widget>[
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: const Text(
              "Terlaris",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: const Text(
              "Daftar Sepatu",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
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
        ]),
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

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: defaultMargin,
        left: 15,
        right: 15,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          // padding: EdgeInsets.only(top: 20),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            const Text(
              "TERREX URBAN LOW",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/image_shoes.png",
            ),
            const Text(
              "Rp2.000.000",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          decoration: const BoxDecoration(
            color: Color(0xffECEDEF),
          ),
          width: 150,
          height: 200,
        ),
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
        right: defaultMargin,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp2.000.000",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return CheckoutPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Beli",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xffECEDEF),
          ),
        ),
      ),
      width: width,
      height: 420,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Stack(children: [
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Positioned(
          top: 40,
          right: 0,
          left: 0,
          child: Center(
            child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/images/image_shoes.png"),
                )),
          ),
        ),
        Positioned(
          top: 150,
          right: 0,
          left: 0,
          child: Text(
            "Fariz Fahrian",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ]),
      Card(
        elevation: 2,
        // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 15),
                Text("Profil Saya"),
              ],
            ),
          ),
        ),
      ),
      Card(
        elevation: 2,
        // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.payment),
                SizedBox(width: 15),
                Text("Daftar Transaksi"),
              ],
            ),
          ),
        ),
      ),
      Card(
        elevation: 2,
        // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                ),
                SizedBox(width: 15),
                Text("Wishlist"),
              ],
            ),
          ),
        ),
      ),
      Card(
        elevation: 2,
        // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 15),
                Text("Bahasa/ Languange"),
              ],
            ),
          ),
        ),
      ),
      Card(
        elevation: 2,
        // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Icon(Icons.help_center),
                SizedBox(width: 15),
                Text("Pusat Bantuan"),
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: 15),
      Text(
        "ShoesApp. All Right Reserved",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
      ),
    ]);
  }
}
