import 'package:flutter/material.dart';
import 'package:drawer/home/drawer.dart';



class DrawerExample extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DrawerExampleState();
    throw UnimplementedError();
  }
}

class DrawerExampleState extends State<DrawerExample>{

    List<DrawerItem> listpages = [
        
        DrawerItem(
          icon: Icon(Icons.library_books),
          label:"News"
        ),
        DrawerItem(
          icon: Icon(Icons.calendar_today),
          label: "Schedule"
        ),
         DrawerItem(
          icon: Icon(Icons.home),
          label:"Home"
        ),
         DrawerItem(
          icon: Icon(Icons.person_add),
          label:"Register"
        ),
        DrawerItem(
          icon: Icon(Icons.people),
          label:"About Us"
        ),

    
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
                  title: Text("Curved Drawer"),
                  backgroundColor: Colors.black,
                  leading: Builder(
        builder: (context) => IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
                ),
                drawer: Stack(children:[ CurvedDrawer(items: listpages)]),
                body: Container(child: Center(child: Text(""),),),);
  }
}