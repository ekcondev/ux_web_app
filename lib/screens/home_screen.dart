import 'package:flutter/material.dart';
import 'custom_scaffold.dart';
import 'list_medicine.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(title: '', body: ListMedicine());
  }
}
