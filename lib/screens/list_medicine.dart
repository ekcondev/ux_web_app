import 'package:flutter/material.dart';

class ListMedicine extends StatelessWidget {
  static final List<Map<String, String>> medicamentos = [
    {
      "id": "001",
      "nombre": "Levotiroxina",
      "dosis": "1 cápsula de 150 mg",
      "hora": "05:30 AM",
    },
    {
      "id": "002",
      "nombre": "Tramadol",
      "dosis": "20 gotas",
      "hora": "08:00 AM",
    },
    {
      "id": "003",
      "nombre": "Pregabalina",
      "dosis": "1 comprimido de 25 mg",
      "hora": "08:10 AM",
    },
    {
      "id": "004",
      "nombre": "Suplemento Prowey Oncare",
      "dosis": "5 cucharadas",
      "hora": "09:30 AM",
    },
    {
      "id": "005",
      "nombre": "Tramadol",
      "dosis": "20 gotas",
      "hora": "02:00 PM",
    },
    {
      "id": "006",
      "nombre": "Pregabalina",
      "dosis": "1 comprimido de 25 mg",
      "hora": "02:10 PM",
    },
    {
      "id": "007",
      "nombre": "Tramadol",
      "dosis": "20 gotas",
      "hora": "08:00 PM",
    },
    {
      "id": "008",
      "nombre": "Pregabalina",
      "dosis": "1 comprimido de 75 mg",
      "hora": "08:10 PM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
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
                    '¡Hola Edna!',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child:
                  // avatar
                  Image.asset(
                    'assets/images/avatar.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ],
            ),

            // texto y botón de historial
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Medicamentos registrados para hoy',
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
                        Navigator.pushNamed(context, '/history_page_1');
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
                      icon: Icon(Icons.list, color: Colors.white, size: 24),
                      label: Text(
                        'Ver historial de tomas',
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
                              'HORA DE ALARMA',
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
          ],
        ),
      ),
        ],
      )
    );
  }

  Widget buildRow(Map<String, String> medicamento) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildCard(medicamento["id"]!, 100, 300, true, false),
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
}
