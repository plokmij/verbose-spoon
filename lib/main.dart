import 'package:flutter/material.dart';

void main() {
  runApp(App());
}


class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                title: Text("Test"),
                expandedHeight: 248.0,
                floating: false,
                pinned: true,
                /*flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Collapsing Toolbar",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                  )),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  ),
                ),*/
              ),
            ];
          },
          body: Text('Nothingaksd asdaskj'),
        ),
      ),
    );
  }
}