import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[900],
        title: Text("Shopping Cart"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: new GridView(
              children: <Widget>[
                new GridShopping(
                  picture: 'assets/1.jpg',
                  title: "Armoire",
                  color: "Colour - Brown",
                  price: "69 Dollar",
                  number: "3",
                ),
                new GridShopping(
                  picture: 'assets/2.jpg',
                  title: "Light Linen (Size - S)",
                  color: "Colour - Light - Blue & White",
                  price: "32 Dollar",
                  number: "1",
                ),
                new GridShopping(
                  picture: 'assets/3.jpg',
                  title: "Chandelier",
                  color: "Colour - Brown",
                  price: "150 Dollar",
                  number: "2",
                ),
                new GridShopping(
                  picture: 'assets/4.jpg',
                  title: "Designer Table",
                  color: "Colour - Brown - Dark",
                  price: "200",
                  number: "1",
                ),
                new GridShopping(
                  picture: 'assets/5.jpg',
                  title: "Aquarium",
                  color: "Colour - Purple",
                  price: "300",
                  number: "2",
                ),
                new GridShopping(
                  picture: 'assets/6.jpg',
                  title: "Mirror",
                  color: "Colour - Gold",
                  price: "200",
                  number: "4",
                ),
              ],
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
            ),
          ),
          footer (context)
        ],
        //  padding: EdgeInsets.only(top: 300),
        //  decoration: new BoxDecoration(
        //    image: new DecorationImage(
        //      image: new AssetImage("assets/bg.jpg"),
        //      fit: BoxFit.cover),
        //    )
      ),
    );
  }

  footer(BuildContext context) => Container(
        padding: new EdgeInsets.only(left: 40, right: 40, bottom: 20),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          color: Colors.grey,
          child: Text("451 pay"),
          onPressed: () {},
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      );
}

class GridShopping extends StatelessWidget {
  final String picture;
  final String title;
  final String color;
  final String price;
  final String number;

  GridShopping({
    this.picture,
    this.title,
    this.color,
    this.price,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Image(
                image: AssetImage(picture),
                width: 80.0,
              ),
              new Container(
                padding: new EdgeInsets.only(left: 10.0),
                child: new Center(
                  child: new Row(
                    children: <Widget>[
                      new Text(title,
                          style: new TextStyle(
                              fontSize: 15.0, color: Colors.blueGrey)),
                      new Container(
                        padding: new EdgeInsets.only(left: 10.0, top: 5.0),
                        child: new Column(
                          children: <Widget>[
                            new Text(
                              color,
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      new Container(
                        padding: new EdgeInsets.only(left: 10.0, top: 5.0),
                        child: new Column(
                          children: <Widget>[
                            new Text(
                              price,
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.purple),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenresAndMoodsPage extends AbstractPage {
  @override
  String getTitle() => 'Grid Card';

  // @override
  // int getPageBottomBarIndex() => BottomBarItems.Browse.index;

  static const kListHeight = 150.0;

  // Widget _buildContent() {
  //   // return ListView.builder(
  //   //   itemCount: 6,
  //   //   itemBuilder: (BuildContext content, int index) {
  //   //     return _buildHorizontalList(parentIndex: index);
  //   //           });
  //   //     }

  Widget _buildHorizontalList({int parentIndex}) => SizedBox(
        height: kListHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, int index) =>
              CTile(heading: 'Property', subheading: '500 Dollar'),
        ),
      );

  var LayoutSpacing;
  Widget _buildGrid() => GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: LayoutSpacing.sm,
        mainAxisSpacing: LayoutSpacing.sm,
        children: List.generate(6, (index) {
          return CTile(
            padding: false,
            heading: "Shopping Cart",
            subheading: '500 Dollar',
            width: double.infinity,
          );
        }),
      );

  Widget CTile(
      {bool padding, String heading, String subheading, double width}) {}
}

class AbstractPage {}

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
    // TODO: implement build
    return null;
  }
}

header() => Container();
middle() => Container();
footer() => Container();

// class  Products extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }

// class _State extends State< Products> {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: null, itemBuilder: null

//     );
//   }
// }