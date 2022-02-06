import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FullScreenMap(),
    );
  }
}

class FullScreenMap extends StatelessWidget {
  const FullScreenMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: MapboxMap(
        accessToken: "pk.eyJ1IjoiYW5hM2EiLCJhIjoiY2t6OHpqNmQ5MXBzMzJ2b2ZhaDh0dTBjdyJ9.87CK5EFv5fcpkhsDTK4UnA",
        onMapCreated: (x) {},
        initialCameraPosition: const CameraPosition(target: LatLng(0.0, 0.0)),
        onStyleLoadedCallback: () {},
      )
    );
  }
}
