import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Diego Diaz"),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(
              text: "Pinturas",
              icon: Icon(Icons.ac_unit),
            ),
            Tab(
              text: "Mochilas",
              icon: Icon(Icons.payment),
            ),
            Tab(
              text: "Papel",
              icon: Icon(Icons.accessibility_new_outlined),
            ),
            Tab(
              text: "Cartas",
              icon: Icon(Icons.add_home_work_sharp),
            ),
          ] //TextoIcono
              ),
        ),
        body: TabBarView(children: const <Widget>[
          Center(
              child: Text(
            "Tu",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          )),
          Center(
            child: Text(
              "Mama",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Center(
              child: Text(
            "Me",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          )),
          Center(
              child: Text(
            "Gusta",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          )),
        ]),
      ),
    );
  } //widgets
}
