import 'package:flutter/material.dart';
import 'custom_scaffold.dart';

class HistorialTomas2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(title: '', body: _buildBody(context));
  }
}

Widget _buildBody(BuildContext context) {
  final List<Map<String, String>> medicamentos = [
    {
      "id": "002",
      "nombre": "Tramadol",
      "dosis": "20 gotas",
      "hora": "02/03/2025 08:01:00 AM",
    },
    {
      "id": "001",
      "nombre": "Levotiroxina",
      "dosis": "1 cápsula de 150 mg",
      "hora": "02/03/2025 05:30:50 AM",
    },
    {
      "id": "008",
      "nombre": "Pregabalina",
      "dosis": "1 comprimido de 75 mg",
      "hora": "01/03/2025 08:10:30 PM",
    },
    {
      "id": "007",
      "nombre": "Tramadol",
      "dosis": "20 gotas",
      "hora": "01/03/2025 08:00:30 PM",
    },
    {
      "id": "006",
      "nombre": "Pregabalina",
      "dosis": "1 comprimido de 25 mg",
      "hora": "01/03/2025 02:11:00 PM",
    },
    {
      "id": "005",
      "nombre": "Tramadol",
      "dosis": "20 gotas",
      "hora": "01/03/2025 02:00:20 PM",
    },
    {
      "id": "004",
      "nombre": "Suplemento Prowey Oncare",
      "dosis": "5 cucharadas",
      "hora": "01/03/2025 09:30:18 AM",
    },
    {
      "id": "003",
      "nombre": "Pregabalina",
      "dosis": "1 comprimido de 25 mg",
      "hora": "01/03/2025 08:10:15 AM",
    },
    {
      "id": "002",
      "nombre": "Tramadol",
      "dosis": "20 gotas",
      "hora": "01/03/2025 08:01:00 AM",
    },
    {
      "id": "001",
      "nombre": "Levotiroxina",
      "dosis": "1 cápsula de 150 mg",
      "hora": "01/03/2025 05:30:50 AM",
    },
  ];
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.only(top: 0, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // bienvenida y avatar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0, left: 100),
                child: Text(
                  '',
                  style: TextStyle(
                    fontSize: 0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child:
                // avatar
                Image.asset('assets/images/avatar.png', width: 80, height: 80),
              ),
            ],
          ),

          // texto y botón de volver
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Text(
                  'Historial de tomas',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(height: 90),

              Padding(
                padding: EdgeInsets.only(right: 360),
                // botón
                child: Container(
                  width: 270,
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // acción del botón
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF69A7FF),

                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                    label: Text(
                      'Volver',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // table header
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100, top: 0),
                    child: Container(
                      width: 300,
                      height: 56,
                      child: Card(
                        elevation: 3,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.white, width: 3),
                        ),
                        color: Color(0xFF69A7FF),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'ID DEL MEDICAMENTO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0, top: 0),
                    child: Container(
                      width: 400,
                      height: 56,
                      child: Card(
                        elevation: 3,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.white, width: 3),
                        ),
                        color: Color(0xFF69A7FF),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'NOMBRE DEL MEDICAMENTO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Container(
                      width: 400,
                      height: 56,
                      child: Card(
                        elevation: 3,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.white, width: 3),
                        ),
                        color: Color(0xFF69A7FF),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'DOSIS DEL MEDICAMENTO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Container(
                      width: 300,
                      height: 56,
                      child: Card(
                        elevation: 3,
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.white, width: 3),
                        ),
                        color: Color(0xFF69A7FF),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'HISTORIAL DE TOMAS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SingleChildScrollView(
            child: Column(
              children:
                  medicamentos
                      .map((medicamento) => buildRow(medicamento))
                      .toList(),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    // acción del botón
                    Navigator.pushNamed(context, '/history_page_1');
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.keyboard_double_arrow_left,
                      color: Color(0xFF69A7FF),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 20),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  '2 de 2',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),

              SizedBox(width: 20),

              Padding(
                padding: EdgeInsets.only(top: 30, right: 400),
                child: InkWell(
                  onTap: () {
                    // acción del botón
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.keyboard_double_arrow_right,
                      color: Color(0xFF69A7FF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildRow(Map<String, String> medicamento) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildCard(medicamento["id"]!, 100, 300, false, false),
        buildCard(medicamento["nombre"]!, 0, 400, false, true),
        buildCard(medicamento["dosis"]!, 0, 400, false, false),
        buildCard(medicamento["hora"]!, 0, 300, false, false),
      ],
    ),
  );
}

Widget buildCard(
  String text,
  double leftPadding,
  double width,
  bool hasIcon,
  bool justifyItem,
) {
  return Padding(
    padding: EdgeInsets.only(left: leftPadding),
    child: Container(
      width: width,
      height: 56,
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(color: Color.fromARGB(8, 29, 27, 32), width: 3),
        ),
        color: Color(0xFFFfbfbfc),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (hasIcon)
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF69A7FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit, color: Colors.white),
                  ),
                ),
              if (hasIcon) SizedBox(width: 20),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  textAlign:
                      hasIcon
                          ? TextAlign.center
                          : justifyItem
                          ? TextAlign.start
                          : TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
