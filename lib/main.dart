import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text ('Flutter: Curso de Flutter'),
        ),
        body: ListView(
          children: const [ Task('iniciando o curso'),
          Task('fazendo o curso'),
          Task('Finalizando o curso'),
          Task('iniciando o curso'),
          Task('fazendo o curso'),
          Task('Finalizando o curso'),

        ],
        ),
        floatingActionButton: FloatingActionButton( onPressed:  () { const Task('Finalizando o curso');
        }),
        ),
      );
  }
}

class Task extends StatelessWidget {
  final String frase;
  const Task(this.frase, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child:Column (children:<Widget> [ 
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    color: Colors.black26,
                    width: 72,
                    height: 100,
                    ),
                    Text(
                      frase,
                      style: const TextStyle(
                        fontSize: 24,overflow: TextOverflow.ellipsis
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_drop_up))
                ]),
              ),
              Container(
                color: Colors.blue,
                height: 50,
              ),
      ],
      )
    );
  }
}