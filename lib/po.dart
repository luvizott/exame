import 'package:exame/main.dart';
import 'package:exame/nv.dart';
import 'package:exame/to.dart';
import 'package:exame/vi.dart';
import 'package:flutter/material.dart';

class Positivados extends StatelessWidget {
  const Positivados({Key? key}) : super(key: key);

  static const String _title = 'Rotas';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  int id = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Todos()),
                  );
                  id = 1;
                });
              },
            ),
            Text(
              'TO',
              style: new TextStyle(fontSize: 17.0),
            ),

            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Naovisitados()),
                  );
                  id = 2;
                });
              },
            ),
            Text(
              'NV',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),

            Radio(
              value: 3,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Visitados()),
                  );
                  id = 3;
                });
              },
            ),
            Text(
              'VI',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: 4,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  id = 4;
                });
              },
            ),
            Text(
              'NE',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: 5,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Positivados()),
                  );
                  id = 5;
                });
              },
            ),
            Text(
              'PO',
              style: new TextStyle(fontSize: 17.0),
            ),
          ],
        ),
        ListTile(
          leading: Icon(Icons.supervised_user_circle_rounded),
          title: Text('Adriano'),
          subtitle: Text('Positivado', style: TextStyle(color: Colors.green),
          ),
        ),
        ListTile(
          leading: Icon(Icons.supervised_user_circle_rounded),
          title: Text('Geovana'),
          subtitle: Text('Positivado', style: TextStyle(color: Colors.green),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Text('Voltar'))
      ],
    );
  }
}
