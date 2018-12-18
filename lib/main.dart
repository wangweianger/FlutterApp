// Step 7 (Final): Change the app's theme

// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Startup Name Generator',
//       theme: new ThemeData(
//         primaryColor: Colors.white,
//       ),
//       home: new RandomWords(),
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   createState() => new RandomWordsState();
// }

// class RandomWordsState extends State<RandomWords> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Startup Name Generator'),
//       ),
//       body: new ListView.builder(
//             padding: const EdgeInsets.all(16.0),
//             itemBuilder: (context, i) {
//                 return new Container(
//                     child: new Image.network('https://img.allpyra.com/d00f6039-e6bf-403c-969b-ad466ac3afca.png?imageView2/2/w/300'),
//                 );
//             },
//         ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build (BuildContext context){
        return new MaterialApp(
            title:'MyApp',
            theme: new ThemeData(
                primarySwatch: Colors.red,
            ),
            home: new MyAppBar(),
        );
    }
}




