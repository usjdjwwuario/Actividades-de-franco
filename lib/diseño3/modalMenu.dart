import 'package:flutter/material.dart';
import 'package:flutter_actividad_3/diseño3/fuentDatos.dart';

modalMenu(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Menú Hospital"),
          backgroundColor: Colors.amber[900],
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // columnas
          ),
          itemCount: opcionesHospital.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: IconButton(
                onPressed: () {
                  llamadoModalMenu(
                    context,
                    opcionesHospital[index]["titulo"],
                    opcionesHospital[index]["icono"],
                    opcionesHospital[index]["codigo"],
                  );
                },
                icon: Column(
                  children: [
                    Icon(
                      opcionesHospital[index]["icono"],
                      color: Colors.orange,
                    ),
                    Text(opcionesHospital[index]["titulo"]),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}

// lista
List opcionesHospital = [
  {
    'codigo': '001',
    'titulo': 'Citas Médicas',
    'icono': Icons.calendar_today, // Icono de calendario
  },
  {
    'codigo': '002',
    'titulo': 'Urgencias',
    'icono': Icons.local_hospital, // Icono de hospital
  },
  {
    'codigo': '003',
    'titulo': 'Especialidades',
    'icono': Icons.medical_services, // Icono de servicios médicos
  },
  {
    'codigo': '004',
    'titulo': 'Farmacia',
    'icono': Icons.local_pharmacy, // Icono de farmacia
  },
  {
    'codigo': '005',
    'titulo': 'Pacientes',
    'icono': Icons.people, // Icono de personas
  },
  {
    'codigo': '006',
    'titulo': 'Terapias',
    'icono': Icons.spa, // Icono de spa
  },
  {
    'codigo': '007',
    'titulo': 'Laboratorio',
    'icono': Icons.biotech, // Icono de biotecnología
  },
  {
    'codigo': '008',
    'titulo': 'Sangre',
    'icono': Icons.bloodtype, // Icono de sangre
  },
  {
    'codigo': '009',
    'titulo': 'Rehabilitación',
    'icono': Icons.accessible, // Icono de accesibilidad
  },
  {
    'codigo': '010',
    'titulo': 'Consultas',
    'icono': Icons.question_answer, // Icono de consultas
  },
  {
    'codigo': '011',
    'titulo': 'Informes',
    'icono': Icons.description, // Icono de informes
  },
  {
    'codigo': '012',
    'titulo': 'Calendario',
    'icono': Icons.calendar_today, // Icono de calendario
  },
  {
    'codigo': '013',
    'titulo': 'Pagos',
    'icono': Icons.payment, // Icono de pagos
  },
  {
    'codigo': '014',
    'titulo': 'Contactos',
    'icono': Icons.contact_phone, // Icono de contactos
  },
  {
    'codigo': '015',
    'titulo': 'Información',
    'icono': Icons.info, // Icono de información
  },
];

void llamadoModalMenu(
    BuildContext context, String tituloAppBar, IconData menuIcono, codigo) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          foregroundColor: Colors.white,
          title: Text(tituloAppBar),
          actions: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                menuIcono,
                color: Colors.orange,
              ),
            ),
          ],
        ),
        body: codigo == "006"
            ? llamadoTareas()
            : codigo == "009"
                ? llamadoEventos()
                : codigo == "001"
                    ? llamadoNotas()
                    : const Text("faltan datos"),
      );
    },
  );
}

////////////////////////////////

llamadoTareas() {
  return ListView.builder(
    itemCount: tareas.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(tareas[index]["nombre"]),
        subtitle: Text(tareas[index]["descripcion"]),
        onTap: () {},
      );
    },
  );
}

////////////////////////////////

llamadoEventos() {
  return ListView.builder(
    itemCount: tareas.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(tareas[index]["nombre"]),
        subtitle: Text(tareas[index]["descripcion"]),
        onTap: () {},
      );
    },
  );
}

llamadoNotas() {
  return ListView.builder(
    itemCount: opcionesCitasMedicas.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: ListTile(
          title: Text(opcionesCitasMedicas[index]['nombre']),
          onTap: () {},
        ),
      );
    },
  );
}
