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
          labelText: label, labelStyle: TextStyle(color: Colors.grey, fontSize: 20.0),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
          ),
      ),
      style: TextStyle(color: Colors.black, fontSize: 20.0),
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

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [


          Container(
            width: double.infinity,
            height: 200,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top:32.0, left: 32.0, right: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[

                  Text('Seja \n'
                      'bem-vindo!',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                            20.0) //                 <--- border radius here
                        ),
                        color: Colors.blue,
                        border: Border.all(
                          width: 0,
                          color: Colors.blue,
                        ),

                      ),
                      child: Material(
                        child: TextField(
                          cursorWidth: 2,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:32.0, left: 32.0, right: 32.0),
            child: Text('Cartão SUS',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:5.0, left: 32.0, right: 32.0),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0,
                  color: Colors.white,
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.black26,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.all(Radius.circular(
                    20.0) //                 <--- border radius here
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 16.0),
                //child: Icon(Icons.person_outline, size: 60.0, color: Colors.black26,),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/img/cartao.png',
                      ),
                      width: 50,

                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16.0),
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.add),
                        label: Text('COMO CONSEGUIR O MEU'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cartoes()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.only(top:32.0, left: 32.0, right: 32.0),
            child: Text('Unidades de Saúde',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:5.0, left: 32.0, right: 32.0),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: new BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0,
                  color: Colors.white,
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.black26,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.all(Radius.circular(
                    20.0) //                 <--- border radius here
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                //child: Icon(Icons.person_outline, size: 60.0, color: Colors.black26,),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/img/unidades.png',
                      ),
                    width: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),

                        child: ElevatedButton.icon(
                          icon: Icon(Icons.add),
                          label: Text('CONSULTE AS UNIDADES  '),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Unidades()),
                            );
                          },
                        ),
                      ),

                  ],
                ),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:32.0, left: 32.0, right: 32.0),
            child: Text('Acesso rápido',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:15.0, left: 32.0, right: 45.0),
                child: Container(
                  child: Image(
                    image: AssetImage(
                      'assets/img/doc.png',
                    ),
                    width: 100,
                  ),
                  width: 140,
                  height: 100,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 0,
                      color: Colors.white,
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.black26,
                          offset: Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(
                        20.0) //                 <--- border radius here
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:5.0, right: 32.0),
                child: Container(

                  child: Image(

                    image: AssetImage(
                      'assets/img/noticias.jpg',
                    ),
                    width: 100,
                  ),
                  width: 140,
                  height: 100,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 0,
                      color: Colors.white,
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.black26,
                          offset: Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(
                        20.0) //                 <--- border radius here
                    ),
                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
