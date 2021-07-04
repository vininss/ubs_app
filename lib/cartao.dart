import 'package:flutter/material.dart';

class Cartoes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Como obter seu cartão'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Column(
              children: [
                Image(
                  image: AssetImage(
                    'assets/img/cartao.png',
                  ),
                  width: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Container(
                    child: Text(
                      "Agora já é possível consultar uma versão digital do aplicativo digital do Cartão Nacional de Saúde (CNS) — ou Cartão do SUS — por meio do aplicativo digital Conecte SUS. "
                          "O serviço inclui consultas, exames, cirurgias, acompanhamento de tratamento de saúde, medicamentos gratuitos, atendimento médico em diferentes especialidades, entre outros, de forma gratuita. No entanto, para ter acesso aos tratamentos é necessário possuir o Cartão Nacional de Saúde, conhecido como cartão SUS."
                          "O novo documento apresenta uma sequência de 15 números, permite a identificação de cidadãos brasileiros ao usar os serviços públicos de saúde do país.",
                      style: TextStyle(
                        color: Colors.black,
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