import 'package:filterapp/card.dart';
import 'package:filterapp/user_list.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  final String modulo;
  final String senioridade;
  final String estado;
  final String cidade;

  const SearchResult(
      {Key key, this.modulo, this.senioridade, this.estado, this.cidade})
      : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  List lista = [];
  int num = 0;

  @override
  void initstate() {
    super.initState();
    teste();
  }

  Future<void> teste() async {
    int tam = UserList.name.length;
    for (int i = 0; i < tam; i++) {
      if (widget.modulo.isNotEmpty &&
          widget.senioridade.isEmpty &&
          widget.estado.isEmpty &&
          widget.cidade.isEmpty) {
        if (UserList.married[i]
            .toLowerCase()
            .contains(widget.modulo.toLowerCase().toString())) {
          lista.add(i);
        }
      } else if (widget.modulo.isNotEmpty &&
          widget.senioridade.isNotEmpty &&
          widget.estado.isEmpty &&
          widget.cidade.isEmpty) {
        if (UserList.married[i].toLowerCase().contains(
                  widget.modulo.toLowerCase().toString(),
                ) &&
            UserList.son[i].toLowerCase().contains(
                  widget.senioridade.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.modulo.isNotEmpty &&
          widget.senioridade.isNotEmpty &&
          widget.estado.isNotEmpty &&
          widget.cidade.isEmpty) {
        if (UserList.married[i].toLowerCase().contains(
                  widget.modulo.toLowerCase().toString(),
                ) &&
            UserList.son[i].toLowerCase().contains(
                  widget.senioridade.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.estado.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.modulo.isNotEmpty &&
          widget.senioridade.isNotEmpty &&
          widget.estado.isNotEmpty &&
          widget.cidade.isNotEmpty) {
        if (UserList.married[i].toLowerCase().contains(
                  widget.modulo.toLowerCase().toString(),
                ) &&
            UserList.son[i].toLowerCase().contains(
                  widget.senioridade.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.estado.toLowerCase().toString(),
                ) &&
            UserList.city[i].toLowerCase().contains(
                  widget.cidade.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.modulo.isEmpty &&
          widget.senioridade.isEmpty &&
          widget.estado.isNotEmpty &&
          widget.cidade.isEmpty) {
        if (UserList.state[i]
            .toLowerCase()
            .contains(widget.estado.toLowerCase().toString())) {
          lista.add(i);
        }
      } else if (widget.modulo.isEmpty &&
          widget.senioridade.isEmpty &&
          widget.estado.isNotEmpty &&
          widget.cidade.isNotEmpty) {
        if (UserList.state[i].toLowerCase().contains(
                  widget.estado.toLowerCase().toString(),
                ) &&
            UserList.city[i].toLowerCase().contains(
                  widget.cidade.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      }
    }
    num = lista.length;
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: teste(),
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.green,
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.modulo,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 30),
                  child: Text(
                    ' ${num} Candidatos nesse módulo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: CustomCard(
                              lista: lista,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
