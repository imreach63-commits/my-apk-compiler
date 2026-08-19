import 'package:flutter/material.dart';

void main() {
  runApp(const HyperlocalApp());
}

class HyperlocalApp extends StatelessWidget {
  const HyperlocalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Hyperlocal Offers',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const ModeSelectScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ModeSelectScreen extends StatelessWidget {
  const ModeSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Hyperlocal Video App (v4.1)'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Your Mode',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange, minimumSize: const Size.fromHeight(50)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomerFeedScreen()));
              },
              child: const Text('Mode A: Customer View (GPS & Reels Feed)', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent, minimumSize: const Size.fromHeight(50)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MerchantLoginScreen()));
              },
              child: const Text('Mode B: Merchant Dashboard (60s Camera)', style: TextStyle(fontSize: 16, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerFeedScreen extends StatelessWidget {
  const CustomerFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nearby Live Offers (2-5 km)')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            margin: const EdgeInsets.all(10),
            color: Colors.grey[900],
            child: Stack(
              children: [
                Center(child: Text('Reels Video Feed #${index + 1}', style: const TextStyle(color: Colors.white, fontSize: 18))),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Local Store Name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('50% OFF - Live Timer: 45s', style: TextStyle(color: Colors.greenAccent)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class MerchantLoginScreen extends StatelessWidget {
  const MerchantLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Merchant Phone / OTP Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Enter Mobile Number',
                labelStyle: TextStyle(color: Colors.white70),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange, minimumSize: const Size.fromHeight(50)),
              onPressed: () {},
              child: const Text('Get OTP & Start 7-Day Free Trial'),
            ),
          ],
        ),
      ),
    );
  }
}
