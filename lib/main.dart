import 'package:flutter/material.dart';
import 'package:futter_bot/about.dart';
import 'package:futter_bot/home.dart';
// import 'package:chatbotapp/chat.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:futter_bot/privacy_policy.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'dart:ui' as ui;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SASK ChatBot',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/', // Set the initial route to the Home page
      routes: {
        '/': (context) => const ChatApp(), // Define the Home page route
        '/about': (context) => const AboutPage(), // Define the About page route
        '/ChatApp': (context) => const ChatApp(),
        '/PrivacyPolicyPage': (context) => PrivacyPolicyPage(),
      },
    );
  }
}

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<ChatApp> createState() => _ChatAppState();
}

void _launcherURL(int value) async {
  String url = "";

  if (value == 1) {
    url = "/about";
  } else if (value == 2) {
    url = "/Menu";
  } else if (value == 3) {
    url = "https://mapcarta.com/W850009568";
  } else if (value == 4) {
    url = "/PrivacyPolicy";
  }

  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw "Coluld not Launch $url";
  }
}

class _ChatAppState extends State<ChatApp> {
  final List<String> imageList = [
    //   "https://ilmauniversity.edu.pk/images/main/main.jpg",
    //   "https://ilmauniversity.edu.pk/images/np/1.jpg",
    //   "https://i0.wp.com/theazb.com/wp-content/uploads/2022/02/ILMA-Convocation.jpg?fit=1200%2C700&quality=100&strip=all&ssl=1",
    //   "https://www.biztoday.news/wp-content/uploads/2022/04/Ilma-University.jpeg",
    //   "https://propakistani.pk/wp-content/uploads/2022/10/ILMA-University-Ranked-as-the-Number-1-University-in-Sindh-and-the-3rd-Best-Private-Sector-University-of-Pakistan-for-the-Year-2022-by-the-Times-Higher-Education-Impact-Ranking-UK.jpg",
    //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5e5O8ZQLDtBBLL16DcC3Qeolt1x_YPrwQYQ&usqp=CAU",
    //   "https://ilmauniversity.edu.pk/assets/custom/images/faci/3.jpg",

    "https://omnivorescookbook.com/wp-content/uploads/2019/12/1911_Beef-Rendang_550.jpg",
    "https://kfoods.com/images1/newrecipeicon/chicken-biryani_3.jpg",
    "https://ministryofcurry.com/wp-content/uploads/2021/01/Pad-Thai_-1.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwo0f9pAlb4q_e1-c54J0I0nnJSMGghqQu1Q&usqp=CAU",
    "https://www.cookingclassy.com/wp-content/uploads/2022/02/molten-lava-cake-17.jpg",
    "https://assets-global.website-files.com/614a379840dbad1848e598c2/63fcde63e0ae8e62b26548ae_IMG_0218.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAFQSmL8k0hskYlpCa-yW2pC-hrRpU5j2CyA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqFuXgvCLfdqd-EMrP-eiCfo8Y7WDf76XEWQ&usqp=CAU",
  ];

  Widget _BScard(int value) {
    String url = "";
    if (value == 1) {
      url =
          "https://omnivorescookbook.com/wp-content/uploads/2019/12/1911_Beef-Rendang_550.jpg";
    } else if (value == 2) {
      url = "https://kfoods.com/images1/newrecipeicon/chicken-biryani_3.jpg";
    } else if (value == 3) {
      url =
          "https://ministryofcurry.com/wp-content/uploads/2021/01/Pad-Thai_-1.jpg";
    } else if (value == 4) {
      url =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwo0f9pAlb4q_e1-c54J0I0nnJSMGghqQu1Q&usqp=CAU";
    } else if (value == 5) {
      url =
          "https://www.cookingclassy.com/wp-content/uploads/2022/02/molten-lava-cake-17.jpg";
    } else if (value == 6) {
      url =
          "https://assets-global.website-files.com/614a379840dbad1848e598c2/63fcde63e0ae8e62b26548ae_IMG_0218.jpg";
    } else if (value == 7) {
      url =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAFQSmL8k0hskYlpCa-yW2pC-hrRpU5j2CyA&usqp=CAU";
    } else if (value == 8) {
      url =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqFuXgvCLfdqd-EMrP-eiCfo8Y7WDf76XEWQ&usqp=CAU";
    }
    return Card(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Image.network(
        url,
        // fit: BoxFit.fill,
        width: double.infinity,
        height: 200.0,
      ),
    );
  }

  Widget _BSDetails(String Degree, int value) {
    String Desp = "";
    if (value == 1) {
      Desp =
          "Indonesian beef curry cooked in a rich coconut milk-based sauce with lemongrass, galangal, and lime leaves.";
    } else if (value == 2) {
      Desp =
          "Fragrant rice dish made with aromatic spices and tender chicken, garnished with fried onions and served with raita.";
    } else if (value == 3) {
      Desp =
          "Stir-fried rice noodles with tofu, bean sprouts, and egg in a tangy tamarind sauce.";
    } else if (value == 4) {
      Desp =
          "Grilled salmon fillet seasoned with lemon, pepper, and herbs, served with steamed vegetables.";
    } else if (value == 5) {
      Desp =
          "Warm chocolate cake with a gooey, molten center, served with vanilla ice cream.";
    } else if (value == 6) {
      Desp =
          "Classic Italian dessert made with layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa.";
    } else if (value == 7) {
      Desp =
          "Traditional Thai dessert made with sweet glutinous rice, fresh mango slices, and coconut milk.";
    } else if (value == 8) {
      Desp =
          "Classic New York-style cheesecake with a graham cracker crust, topped with a fruit compote.";
    }

    return SizedBox(
      width: double.infinity,
      height: 130.0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Degree,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(
                width: 135.0,
                child: Divider(),
              ),
              Text(Desp),
              const SizedBox(
                width: 135.0,
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sizzle & Spice Kitchen"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "SASK",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
              accountEmail: Text(
                "sizzleandspicekitchen@gmail.com",
                style: TextStyle(fontSize: 20),
              ),
              currentAccountPicture: Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: CircleAvatar(
                    backgroundImage: AssetImage("assets/logo.png"),
                    radius: 30,
                  ),
                ),
                  
                  decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text(
                "About",
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.web),
              // leading: const Icon(Icons.help),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            const Divider(color: Colors.blueGrey),
            ListTile(
              title: const Text(
                "Menu",
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.menu_book),
              // leading: const Icon(Icons.help),
              onTap: () {
                Navigator.pushNamed(context, '/ChatApp');
              },
            ),
            const Divider(color: Colors.blueGrey),
            ListTile(
              title: const Text(
                "Map Location!",
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.map),
              // leading: const Icon(Icons.help),
              onTap: () {
                _launcherURL(3);
              },
            ),
            const Divider(color: Colors.blueGrey),
            ListTile(
              title: const Text(
                "Privacy Policy!",
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.policy),
              // leading: const Icon(Icons.help),
              onTap: () {
                Navigator.pushNamed(context, '/PrivacyPolicyPage');
              },
            ),
            const Divider(color: Colors.blueGrey),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 40.0),
        children: [
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              e,
                              width: 1050.0,
                              height: 350.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          const Divider(height: 50.0),
          // "Menu" heading
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Stack(
                children: [
                  // Stroke Text
                  Text(
                    "Menu!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.black,
                    ),
                  ),
                  Text(
                    'Menu!',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.blueGrey[300],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Divider(height: 50.0),

          //Menu items
          _BScard(1),

          _BSDetails("Beef Rendang", 1),

          // BSCS 4 YEARS
          _BScard(2),

          _BSDetails("Chicken Biryani", 2),

          // BBA 4 YEARS
          _BScard(3),

          _BSDetails("Vegetable Pad Thai", 3),

          //
          _BScard(4),

          _BSDetails("Lemon Pepper Salmon", 4),

          //
          _BScard(5),

          _BSDetails("Chocolate Lava Cake", 5),

          //
          _BScard(6),

          _BSDetails("Tiramisu", 6),

          //
          _BScard(7),

          _BSDetails("Mango Sticky Rice", 7),

          //
          _BScard(8),

          _BSDetails("Cheesecake", 8),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.chat),
        label: const Text("Chat!"),
        tooltip: 'Connect To Assistent',
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
      ),
    );
  }
}
