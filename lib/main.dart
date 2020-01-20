import 'package:crash_course/mocks/mock_location.dart';
import 'package:crash_course/models/location.dart';
import 'package:flutter/material.dart';
import 'location_detail.dart';
import 'location_list.dart';

void main(){
  final List<Location> mockLocations = MockLocation.FetchAll();

  return runApp(MaterialApp(
    home: LocationList(mockLocations )
    ));
}