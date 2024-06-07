import 'package:flutter/material.dart';
import 'package:flutter_actividad_3/diseño3/modalMenu.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Menu de publicidd",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Inicio Hospital"),
          centerTitle: true,
          backgroundColor: Colors.amber[700],
          foregroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              modalMenu(context);
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Bienvenido al Hospital",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       Text(
            //         'Izquierda',
            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Colors.black,
            //         ),

            //       ),
            //       Text(
            //         'Derecha',
            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Colors.black,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Contenido en la izquierda
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.local_hospital,
                          size: 40,
                          color: const Color.fromARGB(255, 2, 111, 200)),
                      SizedBox(height: 8),
                      Text(
                        'Información de Contacto',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Tel: 123-456-7890',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  // Contenido en la derecha
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Icon(Icons.access_time, size: 40, color: Colors.blue),
                      SizedBox(height: 8),
                      Text(
                        'Horario de Atención',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Lun - Vie: 8:00 - 18:00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green[50],
      ),
    );
  }
}
