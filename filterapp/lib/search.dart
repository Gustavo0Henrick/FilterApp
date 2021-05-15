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
  Color color = Colors.green[800];

  Color hintcolor;
  TextEditingController tec1 = TextEditingController();
  TextEditingController tec2 = TextEditingController();
  TextEditingController tec3 = TextEditingController();
  TextEditingController tec4 = TextEditingController();
  TextEditingController tec5 = TextEditingController();
  TextEditingController tec6 = TextEditingController();
  TextEditingController tec7 = TextEditingController();
  TextEditingController tec8 = TextEditingController();
  TextEditingController tec9 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.green[400],
        heroTag: null,
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
                      blood: tec1.text,
                      doador: tec2.text,
                      state: tec3.text,
                      city: tec4.text,
                      gender: tec5.text,
                      married: tec6.text,
                      son: tec7.text,
                      smoker: tec8.text,
                      worker: tec9.text,
                    ),
                  ));
            });
          }
        },
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.cleaning_services),
              onPressed: () {
                setState(() {
                  tec1.text = '';
                });
              })
        ],
        centerTitle: true,
        title: Text(
          'Filtros de Busca',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.green[800],
        elevation: 0,
      ),
      backgroundColor: Colors.green[800],
      body: SingleChildScrollView(
        child: Column(children: [
          Icon(
            Icons.person_search_sharp,
            size: 130,
            color: Colors.white,
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
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.95,
              // color: Colors.green[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(children: [
                          Text(
                            'Doador',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        child: Text(
                          'Estado',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Cidade',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Genero',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Casado(a)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Possui Filho(s)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Fumante',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Trabalha',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 41,
                        child: CustomMenuDrop(
                          tec: tec2,
                          hint: 'Selecione',
                          items: ItemList.bool.cast<String>(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 41,
                        child: CustomMenuDrop(
                          tec: tec3,
                          hint: 'Selecione',
                          items: ItemList.state.cast<String>(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 41,
                        child: CustomMenuDrop(
                          tec: tec4,
                          hint: 'Selecione',
                          items: ItemList.city.cast<String>(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 41,
                        child: CustomMenuDrop(
                          tec: tec5,
                          hint: 'Selecione',
                          items: ItemList.gender.cast<String>(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 41,
                        child: CustomMenuDrop(
                          tec: tec6,
                          hint: 'Selecione',
                          items: ItemList.bool.cast<String>(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 41,
                        child: CustomMenuDrop(
                          tec: tec7,
                          hint: 'Selecione',
                          items: ItemList.bool.cast<String>(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 41,
                        child: CustomMenuDrop(
                          tec: tec8,
                          hint: 'Selecione',
                          items: ItemList.bool.cast<String>(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 41,
                        child: CustomMenuDrop(
                          tec: tec9,
                          hint: 'Selecione',
                          items: ItemList.bool.cast<String>(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
