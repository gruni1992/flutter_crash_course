import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location{
  static final List<Location> items = [
    Location(
       name: "Köln",
       url: "https://www.openpetition.de/images/petition/endlich-wieder-fernbusse-in-koeln-oeffnung-der-haltestelle-breslauer-platz_1542869664_desktop.jpg",
       facts: <LocationFact>[
         LocationFact(
           title: "Wichtigste Infos", 
           text: '''Köln (kölsch Kölle) ist mit rund 1,1 Millionen Einwohnern die bevölkerungsreichste Stadt des Landes Nordrhein-Westfalen sowie nach Berlin, Hamburg und München die viertgrößte Stadt Deutschlands. Die kreisfreie Stadt am Rhein gehört zum Regierungsbezirk Köln, dessen Verwaltungssitz sie auch ist, und die Region Köln/Bonn ist das Zentrum des Ballungsraumes zwischen Kölner Bucht und Oberbergischem Land mit gut vier Millionen Einwohnern. Köln ist zugleich das rheinische Bevölkerungszentrum der Metropolregion Rhein-Ruhr mit etwa zehn Millionen Einwohnern und der Metropolregion Rheinland mit rund 8,6 Millionen Einwohnern. Die heutige Metropole und frühere Reichsstadt wurde in römischer Zeit unter dem Namen Oppidum Ubiorum gegründet und im Jahr 50 n. Chr. als Colonia Claudia Ara Agrippinensium (kurz Colonia oder CCAA) zur Stadt erhoben.''',
          ),
          LocationFact(
           title: "Entwicklung des Stadtnamens",
           text: '''Der Name der Stadt Köln leitet sich von ihrem lateinischen Namen Colonia Claudia Ara Agrippinensium ab. Aus Colonia entwickelte sich über Coellen, Cöllen, Cölln und Cöln der heutige Name (siehe Abschnitt „Preußische Herrschaft“ sowie Cöln). Im Kölner Dialekt Kölsch wird die Stadt Kölle genannt. In den meisten romanischen und einer größeren Zahl anderer Sprachen ist die lateinische Herkunft des Namens noch erkennbar (beispielsweise Italienisch und Spanisch Colonia, Portugiesisch Colônia, Katalanisch Colònia, französisch Cologne, Polnisch Kolonia, Türkisch Kolonya, arabisch كولونيا, DMG Kōlōnyā).''',
          )
       ],
    ),
    Location(
      name: "Bonn",
      url: "https://img.ebnerstolz.de/Bonn-articleWide-624fe864-3908.jpg",
      facts: <LocationFact>[
        LocationFact(
        title: "Wichtige Infos",
        text: "Die Bundesstadt Bonn ist eine kreisfreie Großstadt im Regierungsbezirk Köln im Süden des Landes Nordrhein-Westfalen. Mit 327.258 Einwohnern (Stand 31. Dezember 2018) zählt Bonn zu den zwanzig größten Städten Deutschlands. Bonn gehört zu den Metropolregionen Rheinland und Rhein-Ruhr sowie zur Region Köln/Bonn. Die Stadt an beiden Ufern des Rheins war von 1949 bis 1990 provisorische Bundeshauptstadt und bis 1999 Regierungssitz der Bundesrepublik Deutschland,[2] seither ist Bonn nur noch faktischer zweiter Regierungssitz Deutschlands.",
      ), LocationFact(
        title: "Stadtrat",
        text: "Der Rat der Stadt Bonn wurde am 25. Mai 2014 gewählt und hat 86 Mitglieder. Aufgrund von 26 Direktmandaten der CDU hat sich die Anzahl der Mandatsträger im Vergleich zur Amtszeit 2009 bis 2014 um sechs erhöht. Der direkt gewählte Oberbürgermeister hat Stimmrecht und leitet die Sitzungen."
      )
      ]
    ), Location(
      name: "Linz am Rhein",
      url: "https://www.bahn.de/regional/view/mdb/pv/deutschland_erleben/rheinland-pfalz/erlebnis/2018/mdb_273613_linz_fotograf-ko_ln-frank-metzemacher-lichtreim-linz-am-rhein-72_980x490_cp_0x151_980x641.jpg",
      facts: <LocationFact>[
        LocationFact(
          title: "Allgemeine Infos",
          text: "Linz am Rhein ist eine Stadt im Landkreis Neuwied im Norden von Rheinland-Pfalz nahe der Grenze zu Nordrhein-Westfalen, rund 25 Kilometer südlich des Stadtzentrums von Bonn. Sie gehört der gleichnamigen Verbandsgemeinde an und ist deren Verwaltungssitz. Linz ist ein staatlich anerkannter Fremdenverkehrsort und gemäß Landesplanung als Mittelzentrum ausgewiesen. Wegen ihrer vielen farblich und künstlerisch ausgestalteten Altstadthäuser nennt sich Linz selbst auch „Die Bunte Stadt am Rhein“."
        ),
        LocationFact(
          title: "Nachbargemeinden",
          text: "Die Stadt Linz am Rhein grenzt (im Uhrzeigersinn) an die Ortsgemeinden Erpel, Vettelschoß, Sankt Katharinen (Landkreis Neuwied), Dattenberg, über den Rhein an die Stadt Sinzig und die Stadt Remagen im Landkreis Ahrweiler sowie an die Ortsgemeinden Ockenfels und Kasbach-Ohlenberg."
        ),
        LocationFact(
          title: "Klima",
          text: "Der Jahresniederschlag beträgt 701 mm. Die Niederschläge liegen im mittleren Drittel der in Deutschland erfassten Werte. An 40 % der Messstationen des Deutschen Wetterdienstes werden niedrigere Werte registriert. Der trockenste Monat ist der Februar, die meisten Niederschläge fallen im Juli. Im Juli fällt doppelt so viel Niederschlag wie im Februar. Die Niederschläge variieren mäßig. An 62 % der Messstationen werden niedrigere jahreszeitliche Schwankungen registriert."
        )
      ]
    )
  ];

  static Location FetchAny(){
     return MockLocation.items[0];
  }

  static List<Location> FetchAll(){
    return items;
  }
}