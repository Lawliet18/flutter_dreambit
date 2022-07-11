import 'package:flutter_dreambit/task_2/geocode_repo/i_geo_code_repo.dart';
import 'package:flutter_dreambit/task_2/models/location_model.dart';

class GeocodeViaPluginRepo implements IGeocodeRepo {
  @override
  String getAddressModel(LocationModel location) {
    return 'address';
  }
}