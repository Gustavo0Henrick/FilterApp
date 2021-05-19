import 'package:filterapp/colors.dart';
import 'package:filterapp/custom_menu_drop.dart';
import 'package:filterapp/item.dart';
import 'package:filterapp/result.dart';

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Color color = FilterColors.main_color;

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

  bool clear = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: FilterColors.light_green,
        heroTag: null,
        onPressed: () {
          if (tec1.text.isEmpty) {
            print(' Campo Obrigatorio Vazio');
            color = FilterColors.red;
            hintcolor = FilterColors.red;

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
          color: FilterColors.white,
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.cleaning_services),
              onPressed: () {
                setState(() {
                  clear = true;
                  hintcolor = null;
                  color = FilterColors.main_color;
                });
              })
        ],
        centerTitle: true,
        title: Text(
          'Filtros de Busca',
          style: TextStyle(
              color: FilterColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: FilterColors.main_color,
        elevation: 0,
      ),
      backgroundColor: FilterColors.main_color,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              Icon(
                Icons.person_search_sharp,
                size: 130,
                color: FilterColors.white,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                  padding: EdgeInsets.only(right: 60),
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
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.width * 1.2,
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
                                'Tipo Sanguíneo',
                                style: TextStyle(
                                  color: FilterColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Text(
                                'Doador',
                                style: TextStyle(
                                  color: FilterColors.white,
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
                                  color: FilterColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Cidade',
                              style: TextStyle(
                                  color: FilterColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Genero',
                              style: TextStyle(
                                  color: FilterColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Casado(a)',
                              style: TextStyle(
                                  color: FilterColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Possui Filho(s)',
                              style: TextStyle(
                                  color: FilterColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Fumante',
                              style: TextStyle(
                                  color: FilterColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Trabalha',
                              style: TextStyle(
                                  color: FilterColors.white,
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
                              clear: clear,
                              hintcolor: hintcolor,
                              iconcolor: color,
                              bordercolor: color,
                              tec: tec1,
                              hint: 'Selecione',
                              items: ItemList.blood.cast<String>(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 41,
                            child: CustomMenuDrop(
                              clear: clear,
                              tec: tec2,
                              hint: 'Selecione',
                              items: ItemList.bool.cast<String>(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 41,
                            child: CustomMenuDrop(
                              clear: clear,
                              tec: tec3,
                              hint: 'Selecione',
                              items: ItemList.state.cast<String>(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 41,
                            child: CustomMenuDrop(
                              clear: clear,
                              tec: tec4,
                              hint: 'Selecione',
                              items: ItemList.city.cast<String>(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 41,
                            child: CustomMenuDrop(
                              clear: clear,
                              tec: tec5,
                              hint: 'Selecione',
                              items: ItemList.gender.cast<String>(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 41,
                            child: CustomMenuDrop(
                              clear: clear,
                              tec: tec6,
                              hint: 'Selecione',
                              items: ItemList.bool.cast<String>(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 41,
                            child: CustomMenuDrop(
                              clear: clear,
                              tec: tec7,
                              hint: 'Selecione',
                              items: ItemList.bool.cast<String>(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 41,
                            child: CustomMenuDrop(
                              clear: clear,
                              tec: tec8,
                              hint: 'Selecione',
                              items: ItemList.bool.cast<String>(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: 41,
                            child: CustomMenuDrop(
                              clear: clear,
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
        ],
      ),
    );
  }
}

