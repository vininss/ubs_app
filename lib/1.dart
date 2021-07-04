import 'package:flutter/material.dart';
import 'cartao.dart';
import 'unidades.dart';

class HomeScreen extends StatefulWidget{

  @override
  HomeScreenState createState() => HomeScreenState();
}
class HomeScreenState extends State<HomeScreen> {
  // This widget is the root of your application.
  String infoText;

  TextEditingController weightController= TextEditingController();
  TextEditingController heightController= TextEditingController();

  Widget buildTextField(String label, TextEditingController c){
    return TextField(
      decoration: InputDecoration(
          labelText: label, labelStyle: TextStyle(color: Colors.cyan, fontSize: 20.0),
          border: OutlineInputBorder()
      ),
      style: TextStyle(color: Colors.cyan, fontSize: 20.0),
      keyboardType: TextInputType.number,
      controller: c,
    );
  }
  void _resetFilds(){
    setState(() {
      weightController.clear();
      heightController.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Seja \n'
                'bem-vindo!',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
            Divider(),
            buildTextField("Pesquisa", heightController),
          ],
        ),
      ),
    );
  }
}
