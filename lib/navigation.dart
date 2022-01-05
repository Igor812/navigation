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
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/SecondScreen': (context) => const SecondScreen(),
        '/ThirdScreen': (context) => const ThirdScreen(),
      },

    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: SecondScreen',
      style: optionStyle,
    ),
    Text(
      'Index 2: ThirdScreen',
      style: optionStyle,
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex)
      {case 0:  Navigator.popAndPushNamed(context,'/'); break;
        case 1:  Navigator.popAndPushNamed(context,'/SecondScreen'); break;
        case 2:  Navigator.popAndPushNamed(context,'/ThirdScreen'); break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.lightBlue,
    title: Text('Первая страница'),
    toolbarHeight: 40,
    actions: <Widget> [

    TextButton(onPressed: (){
      Navigator.popAndPushNamed(context,'/');
    }, child: Text('Главное окно', style: TextStyle(color: Colors.white))),
    IconButton(onPressed: (){
      Navigator.popAndPushNamed(context,'/SecondScreen');
    }, icon: Icon(Icons.navigate_next)),
    IconButton(onPressed: (){
      Navigator.popAndPushNamed(context,'/ThirdScreen');
    }, icon: Icon(Icons.skip_next)),
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
    onTap: (){Navigator.popAndPushNamed(context,'/');},
    ),
    Divider(),
    ListTile(
    leading: const Icon(Icons.navigate_next),
    title: const Text ('Вторая страница'),
    onTap: (){Navigator.popAndPushNamed(context,'/SecondScreen');},
    ),
    Divider(),
    ListTile(
    leading: const Icon(Icons.skip_next),
    title: const Text ('Третья страница'),
    onTap: (){Navigator.popAndPushNamed(context,'/ThirdScreen');},
    )
    ,
    ]
    )
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'SecondScreen',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'LastScreen',
            backgroundColor: Colors.purple,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );

  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: SecondScreen',
      style: optionStyle,
    ),
    Text(
      'Index 2: ThirdScreen',
      style: optionStyle,
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex)
      {case 0:  Navigator.popAndPushNamed(context,'/'); break;
        case 1:  Navigator.popAndPushNamed(context,'/SecondScreen'); break;
        case 2:  Navigator.popAndPushNamed(context,'/ThirdScreen'); break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Вторая страница'),
        toolbarHeight: 40,
        actions: <Widget> [

          TextButton(onPressed: (){
            Navigator.popAndPushNamed(context,'/');
          }, child: Text('Главное окно', style: TextStyle(color: Colors.white))),
          IconButton(onPressed: (){
            Navigator.popAndPushNamed(context,'/SecondScreen');
          }, icon: Icon(Icons.navigate_next)),
          IconButton(onPressed: (){
            Navigator.popAndPushNamed(context,'/ThirdScreen');
          }, icon: Icon(Icons.skip_next)),
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
                  onTap: (){Navigator.popAndPushNamed(context,'/');},
                ),
                Divider(),
                ListTile(
                  leading: const Icon(Icons.navigate_next),
                  title: const Text ('Вторая страница'),
                  onTap: (){Navigator.popAndPushNamed(context,'/SecondScreen');},
                ),
                Divider(),
                ListTile(
                  leading: const Icon(Icons.skip_next),
                  title: const Text ('Третья страница'),
                  onTap: (){Navigator.popAndPushNamed(context,'/ThirdScreen');},
                )
                ,
              ]
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'SecondScreen',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'LastScreen',
            backgroundColor: Colors.purple,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );

  }
}
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: SecondScreen',
      style: optionStyle,
    ),
    Text(
      'Index 2: ThirdScreen',
      style: optionStyle,

    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex)
      {case 0:  Navigator.popAndPushNamed(context,'/'); break;
       case 1:  Navigator.popAndPushNamed(context,'/SecondScreen'); break;
       case 2:  Navigator.popAndPushNamed(context,'/ThirdScreen'); break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Третья страница'),
        toolbarHeight: 40,
        actions: <Widget> [

          TextButton(onPressed: (){
            Navigator.popAndPushNamed(context,'/');
          }, child: Text('Главное окно', style: TextStyle(color: Colors.white))),
          IconButton(onPressed: (){
            Navigator.popAndPushNamed(context,'/SecondScreen');
          }, icon: Icon(Icons.navigate_next)),
          IconButton(onPressed: (){
            Navigator.popAndPushNamed(context,'/ThirdScreen');
          }, icon: Icon(Icons.skip_next)),
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
                  onTap: (){Navigator.popAndPushNamed(context,'/');},
                ),
                Divider(),
                ListTile(
                  leading: const Icon(Icons.navigate_next),
                  title: const Text ('Вторая страница'),
                  onTap: (){Navigator.popAndPushNamed(context,'/SecondScreen');},
                ),
                Divider(),
                ListTile(
                  leading: const Icon(Icons.skip_next),
                  title: const Text ('Третья страница'),
                  onTap: (){Navigator.popAndPushNamed(context,'/ThirdScreen');},
                )
                ,
              ]
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'SecondScreen',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'LastScreen',
            backgroundColor: Colors.purple,
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );

  }
}