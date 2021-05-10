import 'package:filterapp/card.dart';
import 'package:filterapp/user_list.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  final String blood;
  final String doador;
  final String state;
  final String city;
  final String gender;
  final String married;
  final String son;
  final String smoker;
  final String worker;

  const SearchResult(
      {Key key,
      this.blood,
      this.doador,
      this.state,
      this.city,
      this.gender,
      this.married,
      this.son,
      this.smoker,
      this.worker})
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
      if (widget.blood.isNotEmpty) {
        if (UserList.blood[i]
            .toLowerCase()
            .contains(widget.blood.toLowerCase().toString())) {
          lista.add(i);
        }
      } else if (widget.blood.isNotEmpty && widget.doador.isNotEmpty) {
        if (UserList.blood[i].toLowerCase().contains(
                  widget.blood.toLowerCase().toString(),
                ) &&
            UserList.doador[i].toLowerCase().contains(
                  widget.doador.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.blood.isNotEmpty &&
          widget.doador.isNotEmpty &&
          widget.state.isNotEmpty) {
        if (UserList.blood[i].toLowerCase().contains(
                  widget.blood.toLowerCase().toString(),
                ) &&
            UserList.doador[i].toLowerCase().contains(
                  widget.doador.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.state.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.blood.isNotEmpty &&
          widget.doador.isNotEmpty &&
          widget.state.isNotEmpty &&
          widget.city.isNotEmpty) {
        if (UserList.blood[i].toLowerCase().contains(
                  widget.blood.toLowerCase().toString(),
                ) &&
            UserList.doador[i].toLowerCase().contains(
                  widget.doador.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.state.toLowerCase().toString(),
                ) &&
            UserList.city[i].toLowerCase().contains(
                  widget.city.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.blood.isNotEmpty &&
          widget.doador.isNotEmpty &&
          widget.state.isNotEmpty &&
          widget.city.isNotEmpty &&
          widget.gender.isNotEmpty) {
        if (UserList.blood[i].toLowerCase().contains(
                  widget.blood.toLowerCase().toString(),
                ) &&
            UserList.doador[i].toLowerCase().contains(
                  widget.doador.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.state.toLowerCase().toString(),
                ) &&
            UserList.city[i].toLowerCase().contains(
                  widget.city.toLowerCase().toString(),
                ) &&
            UserList.gender[i].toLowerCase().contains(
                  widget.gender.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.blood.isNotEmpty &&
          widget.doador.isNotEmpty &&
          widget.state.isNotEmpty &&
          widget.city.isNotEmpty &&
          widget.gender.isNotEmpty &&
          widget.married.isNotEmpty) {
        if (UserList.blood[i].toLowerCase().contains(
                  widget.blood.toLowerCase().toString(),
                ) &&
            UserList.doador[i].toLowerCase().contains(
                  widget.doador.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.state.toLowerCase().toString(),
                ) &&
            UserList.city[i].toLowerCase().contains(
                  widget.city.toLowerCase().toString(),
                ) &&
            UserList.gender[i].toLowerCase().contains(
                  widget.gender.toLowerCase().toString(),
                ) &&
            UserList.married[i].toLowerCase().contains(
                  widget.married.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.blood.isNotEmpty &&
          widget.doador.isNotEmpty &&
          widget.state.isNotEmpty &&
          widget.city.isNotEmpty &&
          widget.gender.isNotEmpty &&
          widget.married.isNotEmpty &&
          widget.son.isNotEmpty) {
        if (UserList.blood[i].toLowerCase().contains(
                  widget.blood.toLowerCase().toString(),
                ) &&
            UserList.doador[i].toLowerCase().contains(
                  widget.doador.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.state.toLowerCase().toString(),
                ) &&
            UserList.city[i].toLowerCase().contains(
                  widget.city.toLowerCase().toString(),
                ) &&
            UserList.gender[i].toLowerCase().contains(
                  widget.gender.toLowerCase().toString(),
                ) &&
            UserList.married[i].toLowerCase().contains(
                  widget.married.toLowerCase().toString(),
                ) &&
            UserList.son[i].toLowerCase().contains(
                  widget.son.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.blood.isNotEmpty &&
          widget.doador.isNotEmpty &&
          widget.state.isNotEmpty &&
          widget.city.isNotEmpty &&
          widget.gender.isNotEmpty &&
          widget.married.isNotEmpty &&
          widget.son.isNotEmpty &&
          widget.smoker.isNotEmpty) {
        if (UserList.blood[i].toLowerCase().contains(
                  widget.blood.toLowerCase().toString(),
                ) &&
            UserList.doador[i].toLowerCase().contains(
                  widget.doador.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.state.toLowerCase().toString(),
                ) &&
            UserList.city[i].toLowerCase().contains(
                  widget.city.toLowerCase().toString(),
                ) &&
            UserList.gender[i].toLowerCase().contains(
                  widget.gender.toLowerCase().toString(),
                ) &&
            UserList.married[i].toLowerCase().contains(
                  widget.married.toLowerCase().toString(),
                ) &&
            UserList.son[i].toLowerCase().contains(
                  widget.son.toLowerCase().toString(),
                ) &&
            UserList.smoker[i].toLowerCase().contains(
                  widget.smoker.toLowerCase().toString(),
                )) {
          lista.add(i);
        }
      } else if (widget.blood.isNotEmpty &&
          widget.doador.isNotEmpty &&
          widget.state.isNotEmpty &&
          widget.city.isNotEmpty &&
          widget.gender.isNotEmpty &&
          widget.married.isNotEmpty &&
          widget.son.isNotEmpty &&
          widget.smoker.isNotEmpty &&
          widget.worker.isNotEmpty) {
        if (UserList.blood[i].toLowerCase().contains(
                  widget.blood.toLowerCase().toString(),
                ) &&
            UserList.doador[i].toLowerCase().contains(
                  widget.doador.toLowerCase().toString(),
                ) &&
            UserList.state[i].toLowerCase().contains(
                  widget.state.toLowerCase().toString(),
                ) &&
            UserList.city[i].toLowerCase().contains(
                  widget.city.toLowerCase().toString(),
                ) &&
            UserList.gender[i].toLowerCase().contains(
                  widget.gender.toLowerCase().toString(),
                ) &&
            UserList.married[i].toLowerCase().contains(
                  widget.married.toLowerCase().toString(),
                ) &&
            UserList.son[i].toLowerCase().contains(
                  widget.son.toLowerCase().toString(),
                ) &&
            UserList.smoker[i].toLowerCase().contains(
                  widget.smoker.toLowerCase().toString(),
                ) &&
            UserList.worker[i].toLowerCase().contains(
                  widget.worker.toLowerCase().toString(),
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
          ),
          backgroundColor: Colors.green,
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.blood,
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
                    ' ${num} pessoas encontrada(s)',
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
