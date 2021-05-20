import 'package:flutter/material.dart';

void main() => runApp(MiLoginApp());

class MiLoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Benitez',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin de material app
  } //fin de widget
} //fin class miloginapp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
}

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ), //icon button
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //fin de accion widgets[]
        title: Text('registro Benitez'),
      ), //fin de appbar
      body: SafeArea(
        child: ListView(padding: EdgeInsets.symmetric(horizontal: 24.0), children: <Widget>[
          SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              Image.asset('assets/heart.png'),
              SizedBox(height: 20.0),
            ],
          ), //fin de column
          if (!acceso)
            Column(children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  // fillColor: Colors.amber,
                  labelText: 'Username',
                ),
              ), //fin de textfield1
            ] //fin de widget
                ) //fin de columna
          //if fin
          //   else{} //fin de else
        ] //fin de widget

            ), //fin de listview
      ), //fin de safearea
    ); //fin de scaffold
  } //fin de widget
} //fin clase _ingresosistemastate
