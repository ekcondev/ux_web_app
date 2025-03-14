import 'package:flutter/material.dart';
import 'custom_scaffold.dart';

class RegistrarMedicamentoErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(title: '', body: _buildBody(context));
  }
}

_buildBody(BuildContext context) {
    return Scaffold(
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
                'Registrar un medicamento',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 50),
        Padding(
          padding: EdgeInsets.only(left: 100),
          child: Image.asset(
            'assets/images/error.png',
            width: 355,
            height: 355,
          ),
        ),

        SizedBox(height: 55),

        Padding(
          padding: EdgeInsets.only(left: 110),
          child: Text(
            'Error del sistema al registrar el medicamento',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFFFA53A36),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),

        SizedBox(height: 30),
        // Botón de continuar
        Padding(
          padding: EdgeInsets.only(left: 100),
          // botón
          child: Container(
            width: 191,
            height: 40,
            child: ElevatedButton.icon(
              onPressed: () {
                // acción del botón
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF69A7FF),

                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: Icon(Icons.check, color: Colors.white, size: 24),
              label: Text(
                'Continuar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}