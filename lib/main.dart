import 'package:flutter/material.dart';
//import '';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.black,
                title: Text("Profile"),
                expandedHeight: 256.0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: ProfileCard(
                    fullName: 'Samfan',
                    phoneNo: '+91-8129127294',
                  ),
                ),

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
          body: ListView(
            children: <Widget>[
              OptionList(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String fullName;
  final String phoneNo;

  ProfileCard({this.fullName, this.phoneNo});

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[card(context)],
    );
  }

  Widget card(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80.0),
      child: Stack(
        children: <Widget>[
          colorBox(Colors.black),
          profilePic(context),
          nameNnumber(),
        ],
      ),
    );
  }

  Widget colorBox(Color color) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 2.0,
              offset: Offset(0.0, 1.0),
            )
          ]),
    );
  }

  Widget profilePic(BuildContext context) {
    //double width = MediaQuery.of(context).size.width / 2 - 64.0;
    return Container(
      alignment: Alignment.center,
      child: Icon(
        Icons.account_circle,
        size: 100.0,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget nameNnumber() {
    Text name = Text(
      fullName,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 21.0,
        fontWeight: FontWeight.w400,
      ),
    );

    Text number = Text(
      phoneNo,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),
    );
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 125.0,
      ),
      child: Column(
        children: <Widget>[
          name,
          SizedBox(
            height: 5.0,
          ),
          number
        ],
      ),
    );
  }
}

class OptionList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildTile(context, "Contact Details", Icons.smartphone),
        buildTile(context, "Booking History", Icons.history),
        buildTile(context, "Send Feedback", Icons.feedback),
        buildTile(context, "Invite", Icons.supervisor_account),
        buildTile(
            context, "Notification Preferences", Icons.notification_important),
      ],
    );
  }

  Widget buildTile(BuildContext context, String title, IconData icon) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(title),
          leading: Icon(icon),
          trailing: Icon(Icons.navigate_next),
        ),
        Divider(
          height: 6.0,
        ),
      ],
    );
  }
}
