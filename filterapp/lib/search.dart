import 'package:filterapp/custom_menu_drop.dart';
import 'package:filterapp/item.dart';
import 'package:filterapp/result.dart';
import 'package:filterapp/user_list.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Color color = Colors.green;
  Color hintcolor;
  TextEditingController tec1 = TextEditingController();
  TextEditingController tec2 = TextEditingController();
  TextEditingController tec3 = TextEditingController();
  TextEditingController tec4 = TextEditingController();
  TextEditingController tec5 = TextEditingController();
  TextEditingController tec6 = TextEditingController();
  TextEditingController tec7 = TextEditingController();
  TextEditingController tec8 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      backgroundColor: Colors.green,
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Filtros de Busca',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 30, left: 60),
          child: Row(children: [
            Text(
              'Tipo Sanguíneo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                '* Campo Obrigatório',
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(left: 60, top: 10, right: 60),
          width: MediaQuery.of(context).size.width,
          height: 41,
          child: CustomMenuDrop(
            hintcolor: hintcolor,
            iconcolor: color,
            bordercolor: color,
            tec: tec1,
            hint: 'Selecione',
            items: ItemList.blood.cast<String>(),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30, left: 60),
          child: Row(children: [
            Text(
              'Fumante',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ]),
        ),
        Container(
          padding: EdgeInsets.only(left: 60, top: 10, right: 60),
          width: MediaQuery.of(context).size.width,
          height: 41,
          child: CustomMenuDrop(
            tec: tec2,
            hint: 'Selecione',
            items: ItemList.bool.cast<String>(),
          ),
        ),
        Row(children: [
          Container(
            padding: EdgeInsets.only(left: 60, top: 20),
            child: Text(
              'Estado',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 115, top: 20),
            child: Text(
              'Cidade',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ]),
        Row(children: [
          Container(
            padding: EdgeInsets.only(left: 60, top: 10, right: 5),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 41,
            child: CustomMenuDrop(
              tec: tec3,
              hint: 'Selecione',
              items: ItemList.state.cast<String>(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, top: 10, right: 60),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 41,
            child: CustomMenuDrop(
              tec: tec4,
              hint: 'Selecione',
              items: ItemList.city.cast<String>(),
            ),
          ),
        ]),
        Row(children: [
          Container(
            padding: EdgeInsets.only(left: 60, top: 20),
            child: Text(
              'Casado(a)',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 115, top: 20),
            child: Text(
              'Possui filho(s)?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ]),
        Row(children: [
          Container(
            padding: EdgeInsets.only(left: 60, top: 10, right: 5),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 41,
            child: CustomMenuDrop(
              tec: tec5,
              hint: 'Selecione',
              items: ItemList.bool.cast<String>(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, top: 10, right: 60),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 41,
            child: CustomMenuDrop(
              tec: tec6,
              hint: 'Selecione',
              items: ItemList.bool.cast<String>(),
            ),
          ),
        ]),
        Row(children: [
          Container(
            padding: EdgeInsets.only(left: 60, top: 20),
            child: Text(
              'Sexo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 115, top: 20),
            child: Text(
              'Trabalha?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ]),
        Row(children: [
          Container(
            padding: EdgeInsets.only(left: 60, top: 10, right: 5),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 41,
            child: CustomMenuDrop(
              tec: tec7,
              hint: 'Selecione',
              items: ItemList.bool.cast<String>(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, top: 10, right: 60),
            width: MediaQuery.of(context).size.width * 0.5,
            height: 41,
            child: CustomMenuDrop(
              tec: tec8,
              hint: 'Selecione',
              items: ItemList.bool.cast<String>(),
            ),
          ),
        ]),
        Padding(
          padding: EdgeInsets.only(top: 45),
          child: Container(
            height: 43,
            width: 127,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                primary: Colors.green[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Text(
                'Buscar',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                if (tec1.text.isEmpty) {
                  print(' Campo Obrigatorio Vazio');
                  color = Colors.red[500];
                  hintcolor = Colors.red[500];

                  setState(() {});
                } else {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchResult(
                            modulo: tec1.text,
                            senioridade: tec2.text,
                            estado: tec3.text,
                            cidade: tec4.text,
                          ),
                        ));
                  });
                }
              },
            ),
          ),
        ),
      ]),
    );
  }
}
