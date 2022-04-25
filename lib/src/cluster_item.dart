import 'package:cluster_manager_geomodo/cluster_manager_geomodo.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

abstract class ClusterItem {
  LatLng get location;

  String? _geohash;
  String get geohash => _geohash ??=
      Geohash.encode(location, codeLength: ClusterManager.precision);
}
