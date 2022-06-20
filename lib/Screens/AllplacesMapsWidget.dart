// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AllplacesMapsWidget extends StatefulWidget {
  const AllplacesMapsWidget({Key? key}) : super(key: key);

  @override
  State<AllplacesMapsWidget> createState() => _AllplacesMapsWidgetState();
}

class _AllplacesMapsWidgetState extends State<AllplacesMapsWidget> {
  static CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kLake,
        onMapCreated: (GoogleMapController controller) {},
      ),
    );
  }

  Widget buildBottomButton(BuildContext context) => FloatingActionButton(
      backgroundColor: Colors.white,
      child: Icon(
        Icons.gps_fixed,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () {});
}
