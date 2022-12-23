import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // created controller to display Google Maps
  Completer<GoogleMapController> _controller = Completer();
  //on below line we have set the camera position
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(19.0759837, 72.8776559),
    zoom: 5,
  );

  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};

  // list of locations to display polylines
  List<LatLng> latLen = [
    LatLng(21.146633, 79.088860),
    LatLng(19.6500359702, 78.5243799293),
    LatLng(18.34554, 78.31139),
    LatLng(17.387140, 78.491684),
  ];

  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId(0.toString()),
      position: latLen[0],
      icon: BitmapDescriptor.defaultMarker,
    ));
    setState(() {});
    _polyline.add(Polyline(
      polylineId: PolylineId('1'),
      points: latLen,
      color: Colors.green,
    ));
    _markers.add(Marker(
      markerId: MarkerId(1.toString()),
      position: latLen[1],
      infoWindow: InfoWindow(
        title: 'TATAPOWER Tata Motors',
        snippet: 'Charging Station',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));
    setState(() {});
    _polyline.add(Polyline(
      polylineId: PolylineId('1'),
      points: latLen,
      color: Colors.green,
    ));
    _markers.add(Marker(
      markerId: MarkerId(2.toString()),
      position: latLen[2],
      infoWindow: InfoWindow(
        title: 'Hotel Parnika',
        snippet: 'Hotel',
      ),
      icon: BitmapDescriptor.defaultMarker,
    ));
    setState(() {});
    _polyline.add(Polyline(
      polylineId: PolylineId('1'),
      points: latLen,
      color: Colors.green,
    ));

    _markers.add(Marker(
      markerId: MarkerId(3.toString()),
      position: latLen[3],
      icon: BitmapDescriptor.defaultMarker,
    ));
    setState(() {});
    _polyline.add(Polyline(
      polylineId: PolylineId('1'),
      points: latLen,
      color: Colors.green,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        // title of app
        title: Text("Route"),
      ),
      body: Container(
        child: SafeArea(
          child: GoogleMap(
            //given camera position
            initialCameraPosition: _kGoogle,
            // on below line we have given map type
            mapType: MapType.normal,
            // specified set of markers below
            markers: _markers,
            // on below line we have enabled location
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            // on below line we have enabled compass location
            compassEnabled: true,
            // on below line we have added polylines
            polylines: _polyline,
            // displayed google map
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ),
    );
  }
}
