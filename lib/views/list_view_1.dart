import 'package:flutter/material.dart';
import 'package:mobile_project_1/domain/firebase_connection.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  //Lista<Estructura de json<Tipo de dato de la clase, tipo de dato del value(dynamic para que aceprte cualquier tipo de dato)>>
  static List<Map<String, dynamic>> wb_novels = [
    {
      "name": 'Renegade Inmortal',
      "image_url":
          "https://api.skynovels.net/api/get-image/RV1_Xh-IesEDwsciNO_RhQcV.jpg/novels/false"
    },
    {
      "name": 'Tales of Demons and gods',
      "image_url":
          "https://cdn.tunovelaligera.com/wp-content/uploads/2017/05/tales-of-demons-and-godssxp.jpg"
    },
    {
      "name": 'Coiling Dragon',
      "image_url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaXVgaxzE5fFaDWKQBsvgYnwjox-RgSBA-A&usqp=CAU"
    },
    {
      "name": 'i Shall Seal The Heavens',
      "image_url": "https://m.media-amazon.com/images/I/51ARWol7QpL.jpg"
    },
    {
      "name": 'Renegade Inmortal',
      "image_url":
          "https://api.skynovels.net/api/get-image/RV1_Xh-IesEDwsciNO_RhQcV.jpg/novels/false"
    },
    {
      "name": 'Tales of Demons and gods',
      "image_url":
          "https://cdn.tunovelaligera.com/wp-content/uploads/2017/05/tales-of-demons-and-godssxp.jpg"
    },
    {
      "name": 'Coiling Dragon',
      "image_url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaXVgaxzE5fFaDWKQBsvgYnwjox-RgSBA-A&usqp=CAU"
    },
    {
      "name": 'i Shall Seal The Heavens',
      "image_url": "https://m.media-amazon.com/images/I/51ARWol7QpL.jpg"
    },
    {
      "name": 'Renegade Inmortal',
      "image_url":
          "https://api.skynovels.net/api/get-image/RV1_Xh-IesEDwsciNO_RhQcV.jpg/novels/false"
    },
    {
      "name": 'Tales of Demons and gods',
      "image_url":
          "https://cdn.tunovelaligera.com/wp-content/uploads/2017/05/tales-of-demons-and-godssxp.jpg"
    },
    {
      "name": 'Coiling Dragon',
      "image_url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaXVgaxzE5fFaDWKQBsvgYnwjox-RgSBA-A&usqp=CAU"
    },
    {
      "name": 'i Shall Seal The Heavens',
      "image_url": "https://m.media-amazon.com/images/I/51ARWol7QpL.jpg"
    },
    {
      "name": 'Renegade Inmortal',
      "image_url":
          "https://api.skynovels.net/api/get-image/RV1_Xh-IesEDwsciNO_RhQcV.jpg/novels/false"
    },
    {
      "name": 'Tales of Demons and gods',
      "image_url":
          "https://cdn.tunovelaligera.com/wp-content/uploads/2017/05/tales-of-demons-and-godssxp.jpg"
    },
    {
      "name": 'Coiling Dragon',
      "image_url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaXVgaxzE5fFaDWKQBsvgYnwjox-RgSBA-A&usqp=CAU"
    },
    {
      "name": 'i Shall Seal The Heavens',
      "image_url": "https://m.media-amazon.com/images/I/51ARWol7QpL.jpg"
    },
    {
      "name": 'Renegade Inmortal',
      "image_url":
          "https://api.skynovels.net/api/get-image/RV1_Xh-IesEDwsciNO_RhQcV.jpg/novels/false"
    },
    {
      "name": 'Tales of Demons and gods',
      "image_url":
          "https://cdn.tunovelaligera.com/wp-content/uploads/2017/05/tales-of-demons-and-godssxp.jpg"
    },
    {
      "name": 'Coiling Dragon',
      "image_url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaXVgaxzE5fFaDWKQBsvgYnwjox-RgSBA-A&usqp=CAU"
    },
    {
      "name": 'i Shall Seal The Heavens',
      "image_url": "https://m.media-amazon.com/images/I/51ARWol7QpL.jpg"
    },
    {
      "name": 'Renegade Inmortal',
      "image_url":
          "https://api.skynovels.net/api/get-image/RV1_Xh-IesEDwsciNO_RhQcV.jpg/novels/false"
    },
    {
      "name": 'Tales of Demons and gods',
      "image_url":
          "https://cdn.tunovelaligera.com/wp-content/uploads/2017/05/tales-of-demons-and-godssxp.jpg"
    },
    {
      "name": 'Coiling Dragon',
      "image_url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaXVgaxzE5fFaDWKQBsvgYnwjox-RgSBA-A&usqp=CAU"
    },
    {
      "name": 'i Shall Seal The Heavens',
      "image_url": "https://m.media-amazon.com/images/I/51ARWol7QpL.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var testDB = FirebaseConnection().getAll();
    //var test2 = FirebaseConnection().getOne('00001');
    return Scaffold(
        //appBar: AppBar(title: const Text('List of novels')),
        body: ListView.builder(
      itemCount: wb_novels.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage:
                Image.network(wb_novels[index]["image_url"]!).image,
          ),
          title: Text(wb_novels[index][
              "name"]!), // El signo de exclamacion se usa para indicar de que el valor si existe, en caso de que la funcion si o si requiera un valor, es decir, no acepte null's
          onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    title: Text('Hiciste click en ${wb_novels[index]["name"]}'),
                    content: const Text('No hay acciones preparadas...'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(context, 'Salir por aqui'),
                        child: const Text('Salir por aca'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  )),
        );
      },
    ));
  }
}
