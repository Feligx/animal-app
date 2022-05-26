import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  MapSample({Key? key, required this.ubication, required this.type, this.date=""}) : super(key: key);
  final LatLng ubication;
  final String type;
  final String date;

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late GoogleMapController mapController;



  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {

    print(widget.ubication);

    final marker = Marker(
      markerId: MarkerId('URosario'),
      position: widget.ubication,
      infoWindow: InfoWindow(
        title: 'URosario',
        snippet: 'Esta es la U de Rosario',
      ),
      icon: BitmapDescriptor.defaultMarker,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicación de la '+widget.type.toString()),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          GoogleMap(
            markers: {marker},
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: widget.ubication,
              zoom: 20.0,
            ),
          ),
          (widget.date!="")?Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Text(widget.date.toString(), style: TextStyle(color: Colors.white)),
          ):Container(),

        ],
      )
    );
  }
}