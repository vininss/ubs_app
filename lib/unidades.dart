import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'unidade.dart';
import 'unidades_data.dart';

class Unidades extends StatelessWidget{
  void unidadeItemTap(String planet) {}

  final unidades = [
    Unidade(
        '1',
        'assets/img/1103s.png',
        'Unidade de saúde 1103 Sul',
        '+55 63 3218-5056',
        'Q. 1103 Sul Alameda 21, 2, Palmas - TO, Brasil',
        'Consultas Médica Com Clínico Geral; Consulta De Enfermagem; Vacinação; Rápida De Hiv, Sífilis, Hepatites B E C; Curativos; Inalação; Consultas Com Equipe Multiprofissional (Psicologia, Nutrição, Fonoaudiologia, Serviço Social, Terapia Ocupacional, Pediatria E Ginecologia); Posto De Coleta De Laboratório;'),
    Unidade(
        '2',
        'assets/img/405n.png',
        'Unidade de saúde 405 Norte',
        '63 3218 5388',
        'QUADRA 405 NORTE AL 01 APM 10 - S/N, CEP: 77002021 - Palmas',
        'Saúde da Família, Clínico Geral, Ginecologista, Tratamento da Tuberculose, Pré-natal/Parto e Nascimento, Tratamento da Hanseníase'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Unidades"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                unidades[0].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(unidades[0].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UnidadeDetails(
                              unidade: unidades[0],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              unidades[1].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(unidades[1].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UnidadeDetails(
                              unidade: unidades[1],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}