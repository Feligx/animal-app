import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  MapSample({Key? key, required this.ubication, required this.type}) : super(key: key);
  final LatLng ubication;
  final String type;

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late GoogleMapController mapController;

  static final marker = Marker(
    markerId: MarkerId('URosario'),
    position: LatLng(4.6000788, -74.1433306),
    infoWindow: InfoWindow(
      title: 'URosario',
      snippet: 'Esta es la U de Rosario',
    ),
    icon: BitmapDescriptor.defaultMarker,
  );

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubicación de la fundación'),
      ),
      body: GoogleMap(
        markers: {marker},
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: widget.ubication,
          zoom: 11.0,
        ),
      ),
    );
  }
}