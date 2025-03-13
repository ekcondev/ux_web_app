import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  CustomScaffold({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title, style: TextStyle(fontSize: 0))),
      drawer: _buildDrawer(context),
      body: body,
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFFFE7F1FF),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 30),
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: Color(0xFFFE7F1FF)),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 177,
                        height: 180,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _buildDrawerItem(context, Icons.home, "Inicio", '/'),
            _buildDrawerItem(
              context,
              Icons.account_circle,
              "Crear usuario",
              '',
            ),
            _buildDrawerItem(
              context,
              Icons.monitor_heart,
              "Registrar Medicamento",
              '/register_medicine',
            ),
            _buildDrawerItem(context, Icons.archive, "Inventario", ''),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context,
    IconData icon,
    String title,
    String route,
  ) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF69A7FF)),
      title: Text(title, style: TextStyle(color: Color(0xFFF4A4459))),
      tileColor: Color(0xFF69A7FF),
      selectedTileColor: Color(0xFF69A7FF),
      hoverColor: Colors.grey[700],
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
    );
  }
}
