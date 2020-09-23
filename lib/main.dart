import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// // replace this function with the code in the examples
// Widget _myListView(BuildContext context) {
//   // backing data
//   final europeanCountries = [
//     'Albania',
//     'Andorra',
//     'Armenia',
//     'Austria',
//     'Azerbaijan',
//     'Belarus',
//     'Belgium',
//     'Bosnia and Herzegovina',
//     'Bulgaria',
//     'Croatia',
//     'Cyprus',
//     'Czech Republic',
//     'Denmark',
//     'Estonia',
//     'Finland',
//     'France',
//     'Georgia',
//     'Germany',
//     'Greece',
//     'Hungary',
//     'Iceland',
//     'Ireland',
//     'Italy',
//     'Kazakhstan',
//     'Kosovo',
//     'Latvia',
//     'Liechtenstein',
//     'Lithuania',
//     'Luxembourg',
//     'Macedonia',
//     'Malta',
//     'Moldova',
//     'Monaco',
//     'Montenegro',
//     'Netherlands',
//     'Norway',
//     'Poland',
//     'Portugal',
//     'Romania',
//     'Russia',
//     'San Marino',
//     'Serbia',
//     'Slovakia',
//     'Slovenia',
//     'Spain',
//     'Sweden',
//     'Switzerland',
//     'Turkey',
//     'Ukraine',
//     'United Kingdom',
//     'Vatican City'
//   ];

//   return ListView.builder(
//     itemCount: europeanCountries.length,
//     itemBuilder: (context, index) {
//       return ListTile(
//         title: Text(europeanCountries[index]),
//       );
//     },
//   );
// }
Widget _myListView(BuildContext context) {
  final titles = [
    'bike',
    'boat',
    'bus',
    'car',
    'railway',
    'run',
    'subway',
    'transit',
    'walk'
  ];

  final icons = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_subway,
    Icons.directions_transit,
    Icons.directions_walk
  ];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index]),
          title: Text(titles[index]),
        ),
      );
    },
  );
}
