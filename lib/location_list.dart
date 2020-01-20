 import 'package:crash_course/location_detail.dart';
import 'package:flutter/material.dart';
 import 'models/location.dart';
 import 'styles.dart';

class LocationList extends StatelessWidget{
  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    var listView = ListView.builder(
      itemCount: this.locations.length,
      itemBuilder: _listViewItemBuilder
    );
    return Scaffold(
      appBar: AppBar(title: Text("Locations"),),
      body: listView,
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index){
    var location = this.locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () => _navigationToLocationDetail(context, location)
    );
  }

  void _navigationToLocationDetail(BuildContext context, Location location){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => LocationDetail(location)
    ));
  }

  Widget _itemThumbnail(Location location){
    return Container(
      constraints: BoxConstraints.tightFor(width: 100),
      child: Image.network(location.url, fit: BoxFit.fitWidth,),
    );
  }

  Widget _itemTitle(Location location){
    return Text(location.name, style: Styles.textDefault);
  }
}