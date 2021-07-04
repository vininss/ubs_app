import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'unidades_data.dart';


class UnidadeDetails extends StatelessWidget{
    final Unidade unidade;

    const UnidadeDetails({Key key, this.unidade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(unidade.name),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage(unidade.image),
              width: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Especialidades: '+unidade.especialidade+'\n',
              style: Theme.of(context).textTheme.bodyText1,
            ),Text(
              'Telefone: '+unidade.telefone+'\n',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Endereço: '+unidade.endereco+'\n',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}