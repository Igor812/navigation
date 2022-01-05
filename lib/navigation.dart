import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        toolbarHeight: 40,
      actions: <Widget> [
        TextButton(onPressed: (){}, child: Text('Гланое окно', style: TextStyle(color: Colors.white))),
        IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
        IconButton(onPressed: (){}, icon: Icon(Icons.skip_next)),
      ],),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.only(left: 10),
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ), child: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(height: 100,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Image.asset("assets/fon.jpg", ),
                    ),
                    const Text("Навигация в проекте", textAlign: TextAlign.center),
                  ],
                )
              ),
                  ),
              ListTile(
              leading: const Icon(Icons.first_page),
              title: const Text ('Главная'),
              onTap: (){},
            ),
              Divider(),
              ListTile(
                leading: const Icon(Icons.navigate_next),
                title: const Text ('Вторая страница'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: const Icon(Icons.skip_next),
                title: const Text ('Третья страница'),
                onTap: (){},
              ),]
          )
        ),
      )
    );
  }
}
