// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:map_view/map_view.dart';

const API_KEY = "AIzaSyAdx9ROq3v1t1HrxG67aRZy9CnL_DZWdro";

void main() {
  //debugPaintSizeEnabled = true;
  MapView.setApiKey(API_KEY);
  runApp(new MyApp());
}



class MyApp extends StatefulWidget{
  @override
  createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  var _mapView = new MapView();


  //Add a method to call to show the map.
  void showMap() {
       _mapView.addMarker(new Marker("3", "10 Barrel", 45.5259467, -122.687747,
        color: Colors.purple));
      _mapView.show(
        new MapOptions(
            mapViewType: MapViewType.normal,
            showUserLocation: true,
            initialCameraPosition: new CameraPosition(
                new Location(47.6624827, -122.30348579999998), 14.0),
            title: "Recently Visited"),
        toolbarActions: [new ToolbarAction("Close", 1)]);
        _mapView.addMarker(new Marker("3", "10 Barrel", 45.5259467, -122.687747,
        color: Colors.purple));

  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: InkWell(
            onTap: showMap,
          ),
        ),
      ),
    );
  }
}
