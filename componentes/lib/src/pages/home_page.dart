import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapShot<List<dynamic>> snapshot) {},
    );

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems() {
    return [
      ListTile(title: Text('Hola mundo')),
      Divider(),
      ListTile(title: Text('Hola mundo'))
    ];
  }
}
