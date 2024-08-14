import 'package:cluster_manager_geomodo/cluster_manager_geomodo.dart' as cluster;
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

abstract class ClusterItem {
  LatLng get location;
  String get id;

  String? _geohash;
  String get geohash => _geohash ??=
      cluster.Geohash.encode(location, codeLength: cluster.ClusterManager.precision);
}
