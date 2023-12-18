import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //app title
      title: 'Flutter Demo',
      //set theme for all pages
      theme: ThemeData(
        //set theme to dark or light
        brightness: Brightness.light,
        //set appbar theme
        appBarTheme: AppBarTheme(color: Colors.blue,centerTitle: false,titleTextStyle: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w400),toolbarHeight: 100),
        //set floating action button theme
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.blue,elevation: 10,splashColor: Colors.amber,shape: CircleBorder()),
        //you can set various theme for different components in theme data . Press ctrl+space for suggesions

      ),
      //create routes for the pages
      routes: {
    //    '/first': (context) => FirstScreen(),
    //    '/second': (context) => SecondScreen(),
      },
      //remove debug label from screen
      debugShowCheckedModeBanner: false,
      //set icon color when minimizing the app
      color: Colors.blue,

      //create the first page to display and call in home
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //set automatic back navigation intent to false
        //automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),

        //set icons in appbar
        actionsIconTheme:const IconThemeData(color: Colors.white,size: 30,),
        actions: const [
          Icon(Icons.person),
          SizedBox(width: 20,),
          Icon(Icons.settings),
        ],
        //shadow effect
        elevation: 10,
        //back navigation position widget
        //leading:const Icon(Icons.arrow_back,color: Colors.white,),
        //appbar title
        title: Text(widget.title),
      ),
      //appbar body
      body: Center(child: Text("My Home Page")),
      //set background color to the screen
      backgroundColor: Colors.white,

      //set side menu
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(child: Container(child: Text("User Name"),)),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.home),
            leading: Icon(Icons.home_max_rounded),
            enabled: true,
            dense: true,
            onTap: (){},
          )
        ],),
      ),
      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
