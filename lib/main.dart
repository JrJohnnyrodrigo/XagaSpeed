import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool diariaAtiva = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          title: const Text('XagaSpeed'),
        ),
          body:SizedBox(
          width: double.infinity,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text('Saldo do dia'),
              Text('R\$ 80,00'),
              Text(diariaAtiva ? 'Diária em andamento' : 'Diária não iniciada',),
              ElevatedButton(
                onPressed: () {
                    setState(() {
                      diariaAtiva = true;
                    });

                    print(diariaAtiva);
                  },
                child: Text(diariaAtiva ? 'Diária iniciada' : 'Iniciar diária',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}