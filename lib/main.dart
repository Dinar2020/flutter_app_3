import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter: Curso de Flutter'),
        ),
        body: ListView(
          children: [
            Task('iniciando o curso'),
            Task('fazendo o curso'),
            Task('Finalizando o curso'),
            Task('iniciando o curso'),
            Task('fazendo o curso'),
            Task('Finalizando o curso'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Task('Finalizando o curso');
        }),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String frase;
  const Task(this.frase, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
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
                      widget.frase,
                      style: const TextStyle(
                          fontSize: 24, overflow: TextOverflow.ellipsis),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            print(level++);
                          });
                        },
                        child: const Icon(Icons.arrow_drop_up))
                  ]),
            ),
            Container(
              color: Colors.blue,
              height: 50,
              width: 500,
              child:Center(
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ Container(
                      child: LinearProgressIndicator(color: Colors.white,value: level / 10),
                      width: 200,),
                      
                      
                      
                      Text(textAlign: TextAlign.center,

                      'Nível: $level',
                      style: const TextStyle(
                        fontSize: 24,
                        
                      ),),
                    ],
                  ),
                ),
                ),
              
            ),
          ],
        ));
  }
}
