import 'package:flutter_dreambit/task_2/models/location_model.dart';

abstract class IGeocodeRepo {
  String getAddressModel(LocationModel location);
}