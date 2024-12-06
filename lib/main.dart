import 'package:flutter/material.dart';
import 'package:interview/models/property.dart';
import 'package:interview/property_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Property> properties = [
    Property(
      image: 'assets/image.png',
      price: '122,387',
      address: '123 Street',
      roomNum: '4',
      bathtubNum: '3',
      area: '3,258 Sqf',
      towner: 'Landed',
      isReserve: true,
    ),
    Property(
      image: 'assets/image.png',
      price: '122,387',
      address: '123 Street',
      roomNum: '4',
      bathtubNum: '3',
      area: '3,258 Sqf',
      towner: 'Landed',
      isReserve: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Properties"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: properties.length,
          itemBuilder: (context, index) {
            return PropertyCard(property: properties[index]);
          },
        ),
      ),
    );
  }
}
