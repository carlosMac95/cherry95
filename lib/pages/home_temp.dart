import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'opcion1',
    'opcion2',
    'opcion3',
    'opcion4',
    'opcion5',
    'opcion6'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temporal'),
      ),
      body: ListView(children: _crearWidgets(context)),
    );
  }

  List<Widget> _crearWidgets(BuildContext context) {
    List<Widget> lista = <Widget>[];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Subtitulo de la ' + opt),
        leading: Icon(Icons.remove),
        trailing: Icon(Icons.remove),
        onTap: () {
          _SnackBar(opt, context);
        },
      );
      //lista..add(tempWidget)..add(Divider());

      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }

  void _SnackBar(String opcion, BuildContext context) {
    final snackBar = SnackBar(content: Text(opcion));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
