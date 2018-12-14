import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build (BuildContext context){
        return new MaterialApp(
            title:'Flutter Demo',
            theme: new ThemeData(
                primarySwatch: Colors.blue,
            ),
			routes:{
				"new_page":(context)=>NewRoute(),
				"new_page1":(context)=>MoreRoute(),
			},
            home: new MyHomePage(title:'Flutter Demo Home Pages'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key:key);
    final String title;

    @override
    _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;

    void _incrementCounter(){
        setState((){
            _counter++;
        });
    }

    @override
    Widget build(BuildContext context){
        return new Scaffold(
            appBar: new AppBar(
                title:new Text(widget.title),
            ),
            body:new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        new Text(
                            'You have pushed this button this many times;',
                        ),
                        new Text(
                            '$_counter',
                            style:Theme.of(context).textTheme.display1,
                        ),
						FlatButton(
							child:new Text("open new route"),
							textColor: Colors.blue,
							onPressed: (){
								Navigator.pushNamed(context, "new_page");
								// Navigator.push(
								// 	context,
								// 	new MaterialPageRoute(
								// 		builder: (context){
								// 			return new NewRoute();	
								// 		},
								// 		fullscreenDialog:false,
								// 		maintainState:false,
								// 	)
								// );
							},
						),
						new RandomWordsWidget(),
                    ],
                ),
            ),
            floatingActionButton: new FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: new Icon(Icons.add),
            ),
        );
    }
    
}

class NewRoute extends StatelessWidget {
	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: new Text('New route'),
			),
			body: Center(
				child:new Container(
					alignment: Alignment.center,
					child:new Column(
						children: <Widget>[
							Text("This is new roter"),
							RaisedButton(
								color: Colors.blue,
								child: Text('new router.',style:TextStyle(fontSize: 20.0,color:Colors.white)),
								shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
								onPressed: (){
									Navigator.pushNamed(context, "new_page1");
									// Navigator.push(context, 
									// 	new MaterialPageRoute(builder: (context){
									// 		return new MoreRoute();
									// 	})
									// );
								},
							)
						],
					)
				),
			)
		);
	}
}

class MoreRoute extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar: new AppBar(
				title:new Text('我创建的额新页面'),
			),
			body:Center(
				child: Column(
						children: <Widget>[
						TextField(
							autofocus: true,
							decoration: InputDecoration(
								hintText: "用户名或邮箱",
								prefixIcon: Icon(Icons.person)
							),
						),
						TextField(
							decoration: InputDecoration(
								labelText: "密码",
								hintText: "您的登录密码",
								prefixIcon: Icon(Icons.lock)
							),
							obscureText: true,
						),
						],
				)
			)
		);
	}
}

class RandomWordsWidget extends StatelessWidget {
	@override
	Widget build(BuildContext context){
		final wordPair = new WordPair.random();
		return Padding(
			padding: const EdgeInsets.all(8.0),
			child: new Text(wordPair.toString()),
		);
	}
}