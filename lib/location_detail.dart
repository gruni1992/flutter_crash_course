 import 'package:crash_course/styles.dart';
import 'package:flutter/material.dart';
 import 'models/location.dart';

class LocationDetail extends StatelessWidget{
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(location),
        )
      )
    );
  }

  List<Widget> _renderBody(Location location){
    var result = List<Widget>();
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts());
    return result;
  }

  List<Widget> _renderFacts(){
    var result = List<Widget>();
    for(int i=0; i<location.facts.length; i++){
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _bannerImage(String url, double height){
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }

  Widget _sectionTitle(String text){
    return Container(
      padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
      child: Text(
      text,
      textAlign: TextAlign.left,
      style: Styles.headerLarge));
  }

  Widget _sectionText(String text){
    return Container(
      padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
      child: Text(
       text,
       style: Styles.textDefault,
       ));
  }
}