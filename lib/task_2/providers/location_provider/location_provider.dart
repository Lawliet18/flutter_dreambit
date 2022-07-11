import 'package:flutter_dreambit/task_2/geocode_repo/i_geo_code_repo.dart';
import 'package:flutter_dreambit/task_2/models/location_model.dart';

class LocationProvider {
  final IGeocodeRepo _geocodeRepo;

  LocationProvider(this._geocodeRepo);

  String getAddressModel(LocationModel location) =>
      _geocodeRepo.getAddressModel(location);
}
