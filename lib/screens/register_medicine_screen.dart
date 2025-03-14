import 'package:flutter/material.dart';
import 'custom_scaffold.dart';

class RegistrarMedicamentoScreen extends StatefulWidget {
  @override
  _RegistrarMedicamentoScreenState createState() =>
      _RegistrarMedicamentoScreenState();
}

class _RegistrarMedicamentoScreenState
    extends State<RegistrarMedicamentoScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _horaController = TextEditingController(
    text: "12",
  );
  final TextEditingController _minutoController = TextEditingController(
    text: "00",
  );
  String? _tipoDosis;
  String? _tipoExistencias;
  bool isAm = true;

  void _toggleAmPm(bool am) {
    setState(() {
      isAm = am;
    });
  }

  String _validarHora(String value) {
    if (value.isEmpty) return "Ingrese una hora";
    final int? hora = int.tryParse(value);
    if (hora == null || hora < 1 || hora > 12) {
      return "Hora inválida (1-12)";
    }
    return "";
  }

  String _validarMinuto(String value) {
    if (value.isEmpty) return "Ingrese los minutos";
    final int? minuto = int.tryParse(value);
    if (minuto == null || minuto < 0 || minuto > 59) {
      return "Minutos inválidos (00-59)";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: '',
      body: Scaffold(
        body: Column(
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
                  padding: EdgeInsets.only(top: 0, right: 30),
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

            // texto y botón de volver
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Registrar un medicamento',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

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
                        Icons.arrow_back,
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // nombre del medicamento
                Container(
                  width: 810,
                  padding: EdgeInsets.only(left: 100, top: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nombre del medicamento",
                      border: OutlineInputBorder(),

                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                ),
                SizedBox(height: 25),

                // dosis y tipo de dosis
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        '',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Dosis/Cantidad (valor numérico)",
                          border: OutlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    SizedBox(width: 25),

                    SizedBox(
                      width: 350,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Tipo de dosis del medicamento",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        value: _tipoDosis,
                        items:
                            ["Cápsula", "Comprimido", "Gotas", "Cucharada"].map(
                              (String tipo) {
                                return DropdownMenuItem<String>(
                                  value: tipo,
                                  child: Text(tipo),
                                );
                              },
                            ).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _tipoDosis = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),

                // número de existencias y tipo de existencias
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        '',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Número de existencias (valor numérico)",
                          border: OutlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 25),
                    SizedBox(
                      width: 350,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Tipo de existencias",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        value: _tipoExistencias,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                        items:
                            [
                              "Sobre de 7 unidades",
                              "Sobre de 15 unidades",
                              "Sobre de 30 unidades",
                              "Oral 10 mililitros",
                            ].map((String tipo) {
                              return DropdownMenuItem<String>(
                                value: tipo,
                                child: Text(
                                  tipo,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              );
                            }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _tipoExistencias = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),

                // hora AM/PM
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Container(
                      width: 80,
                      child: TextFormField(
                        controller: _horaController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Hora",
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          setState(() {
                            _validarHora(value);
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(":", style: TextStyle(fontSize: 24)),
                    SizedBox(width: 10),

                    Container(
                      width: 80,
                      child: TextFormField(
                        controller: _minutoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Min",
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          setState(() {
                            _validarMinuto(value);
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10),

                    // AM/PM
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () => _toggleAmPm(true),
                          child: Container(
                            width: 50,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: isAm ? Colors.blue : Colors.grey[300],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              ),
                            ),
                            child: Text(
                              "AM",
                              style: TextStyle(
                                color: isAm ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _toggleAmPm(false),
                          child: Container(
                            width: 50,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: !isAm ? Colors.blue : Colors.grey[300],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                            ),
                            child: Text(
                              "PM",
                              style: TextStyle(
                                color: !isAm ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),

                SizedBox(height: 20),

                // Botón de guardar
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  // botón
                  child: Container(
                    width: 300,
                    height: 56,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // acción del botón
                        Navigator.pushNamed(context, '/register_medicine_success');
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
                      icon: Icon(Icons.save, color: Colors.white, size: 24),
                      label: Text(
                        'Guardar cambios',
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
}
