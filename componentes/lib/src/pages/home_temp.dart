import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCortos()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget);
    }

    return lista;
  }

  List<Widget> _crearItemsCortos() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('otra cosa'),
            leading: Icon(Icons.access_alarm_sharp),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Hice clic en listView');
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
