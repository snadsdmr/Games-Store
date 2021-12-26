import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.purple,
        title: Text("Easy-to- Play Games "),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: gameItems.length ,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DestinationScreen()),
              );
            },
            child: Card(
              child: Stack(
                alignment: FractionalOffset.bottomCenter,
                children: <Widget>[
                  Container(
                    height: 200,
                    width:200,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(gameItems[index].thumbnailUrl), fit: BoxFit.contain
                        )
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    color: Colors.indigo,
                    child: Text(gameItems[index].title,
                      style: TextStyle     (fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                  )
                ],
              ),
            ),
          );
        },),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({Key? key}) : super(key: key);

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {


  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
          appBar:  AppBar(
          backgroundColor: Colors.purple,
          title: Text('Dauntless'),),
    body: Column(
      children: [
        Column(children:[
        Image.network('https://www.freetogame.com/g/2/thumbnail.jpg')
    ],
    ),
    ],),);

    }  }


class Games{
  String id;
  String title;
  String thumbnailUrl;
  String shortDescription;
 // double itemPrice;
  String genre;
  Games.item({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this. shortDescription,
    required this.genre,

    //required this.itemPrice,
  });
}

List<Games> gameItems = [
  Games.item(
    id: '1',
    title: 'Dauntless',
    thumbnailUrl: 'https://www.freetogame.com/g/1/thumbnail.jpg',
    shortDescription:
    'A free-to-play, co-op action RPG with gameplay similar to Monster Hunter.',
    genre: 'MMORPG',
  ),
  Games.item(
    id: '2',
    title: 'World of Tanks',
    thumbnailUrl: 'https://www.freetogame.com/g/2/thumbnail.jpg',
    shortDescription:
    'If you like blowing up tanks, with a quick and intense game style you will love this game!',
    genre: 'Shooter',
  ),
  Games.item(
    id: '3',
    title: 'Warframe',
    thumbnailUrl: 'https://www.freetogame.com/g/3/thumbnail.jpg',
    shortDescription:
    'A cooperative free-to-play third person online action shooter set in an stunning sci-fi world.',
    genre: 'Shooter',
  ),
  Games.item(
    id: '4',
    title: 'CRSED: F.O.A.D.',
    thumbnailUrl: 'https://www.freetogame.com/g/4/thumbnail.jpg',
    shortDescription:
    'Take the battle royale genre and add  mystical powers and you have CRSED: F.O.A.D. (Aka Cuisine Royale: Second Edition)',
    genre: 'Shooter',
  ),
  Games.item(
    id: '5',
    title: 'Crossout',
    thumbnailUrl: 'https://www.freetogame.com/g/5/thumbnail.jpg',
    shortDescription: 'A post-apocalyptic MMO vehicle combat game!',
    genre: 'Shooter',
  ),
  Games.item(
    id: '6',
    title: 'Blade and Soul',
    thumbnailUrl: 'https://www.freetogame.com/g/6/thumbnail.jpg',
    shortDescription:
    'A free-to-play martial arts MMORPG that tasks players with learning combination attacks.',
    genre: 'MMORPG',
  ),
  Games.item(
    id: '7',
    title: 'Armored Warfare',
    thumbnailUrl: 'https://www.freetogame.com/g/7/thumbnail.jpg',
    shortDescription:
    'A modern team-based MMO tank game from Obsidian Entertainment.',
    genre: 'Shooter',
  ),
  Games.item(
    id: '8',
    title: 'Trove',
    thumbnailUrl: 'https://www.freetogame.com/g/8/thumbnail.jpg',
    shortDescription:
    'A free to play Sandbox massively multiplayer online role-playing game!',
    genre: 'MMORPG',
  ),
  Games.item(
    id: '9',
    title: 'World of Warships',
    thumbnailUrl: 'https://www.freetogame.com/g/9/thumbnail.jpg',
    shortDescription:
    'A 3D free to play naval action-themed MMO from the creators of World of Tanks!',
    genre: 'Shooter',
  ),
  Games.item(
    id: '10',
    title: 'ArcheAge',
    thumbnailUrl: 'https://www.freetogame.com/g/10/thumbnail.jpg',
    shortDescription:
    'A free-to-play, hybrid fantasy/sandbox MMORPG brought to you by Trion Worlds.',
    genre: 'MMORPG',
  ),
];