import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('About Us'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Sizzle & Spice Kitchen, where the passion for bold flavors meets the artistry of culinary innovation. Our menu is a celebration of vibrant spices, sizzling grills, and heartwarming dishes that reflect the rich tapestry of global cuisine.",
              style: TextStyle(fontSize: 16,
              color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              "Step into our warm and inviting dining space, where the enticing aromas of fresh herbs, fragrant spices, and sizzling meats greet you. Our chefs, true artisans of the kitchen, draw inspiration from a diverse range of culinary traditions, from the fragrant biryanis of India to the fiery karahis of Pakistan, the aromatic curries of Thailand to the savory stir-fries of China.",
              style: TextStyle(fontSize: 16,
              color: Colors.black),
              ),
                    SizedBox(height: 20),
              Text(
                "At Sizzle & Spice Kitchen, we believe in the transformative power of food. Each dish is carefully crafted to ignite your senses, offering a symphony of flavors that will transport you to faraway lands. Whether you're craving the tender juiciness of our Beef Rendang, the aromatic perfection of our Chicken Biryani, or the comforting richness of our Vegetable Pad Thai, we promise an unforgettable dining experience.",
                style: TextStyle(fontSize: 16,
              color: Colors.black),
              ),
                    SizedBox(height: 20),
              Text(
                "Our commitment to excellence extends beyond our culinary creations. We take pride in sourcing the finest ingredients, from premium cuts of meat to the freshest produce, ensuring every bite is a testament to quality and flavor. Complemented by a curated selection of beverages, from refreshing mocktails to tantalizing cocktails, our menu offers something for every palate.",
                style: TextStyle(fontSize: 16,
              color: Colors.black),
              ),
                    SizedBox(height: 20),
        
          ],
        
        ),
        ),
      ),
          
      );
  }
}