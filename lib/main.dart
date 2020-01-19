import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyAPPHelloWorld());
}

class MyAPPHelloWorld extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello Flutter",
      darkTheme: ThemeData(
        backgroundColor: Colors.black45,
      ),
      home: MyHomePageHW(title:'Hello world'),
    );
  }
}

class MyHomePageHW extends StatefulWidget{
  MyHomePageHW({Key key,this.title}):super(key:key);

  String title;

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageHW();
  }
}

class _MyHomePageHW extends State<MyHomePageHW>{
  var _tapText = '文字点击事件, 点我！';

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: AppBar(
          title: Text('这个是Appbar的标题'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hello world g 你好您好Hello world g 你好您好Hello world g 你好您好Hello world g 你好您好Hello world g 你好您好Hello world g 你好您好",
                textAlign:TextAlign.start,
                softWrap: false,//超出屏幕自动换行
                  overflow: TextOverflow.ellipsis,
                style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 18,
//                decoration: TextDecoration.combine([TextDecoration.lineThrough,TextDecoration.underline]),
                //underline 和 solid 一起无效？
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                decorationStyle: TextDecorationStyle.dashed,
//                backgroundColor: Colors.pink,
                fontWeight: FontWeight.w600,
//                fontStyle: FontStyle.italic,
                letterSpacing: 1.2,
                wordSpacing: 6,
                textBaseline: TextBaseline.ideographic,
//                locale: Locale.fromSubtags(languageCode: '86'),
                )
              ),
              Text("Hello Flutter"),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(_tapText == "啊我被点到了"){
                      _tapText = "文字点击事件, 点我！";
                    }else{
                      _tapText = "啊我被点到了";
                    }
                  });
                },
                child: Text(
                  _tapText,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )
        ),
      );
  }

}

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return CupertinoApp(
      title: 'flutter demo',
      theme: CupertinoThemeData(
        primaryColor: Colors.pink,
      ),
      home: MyHomePage(title:'flutter demo home page'),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.pink,

    );
    /*return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );*/
  }
}
