import 'package:filterapp/card.dart';
import 'package:filterapp/user_list.dart';
import 'package:filterapp/users.dart';
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
      if (UserListM.users[i]['blood']
              .toString()
              .toLowerCase()
              .contains(widget.blood.toLowerCase()) &&
          UserListM.users[i]['doador']
              .toString()
              .toLowerCase()
              .contains(widget.doador.toLowerCase()) &&
          UserListM.users[i]['state']
              .toString()
              .toLowerCase()
              .contains(widget.state.toLowerCase()) &&
          UserListM.users[i]['city']
              .toString()
              .toLowerCase()
              .contains(widget.city.toLowerCase()) &&
          UserListM.users[i]['gender']
              .toString()
              .toLowerCase()
              .contains(widget.gender.toLowerCase()) &&
          UserListM.users[i]['married']
              .toString()
              .toLowerCase()
              .contains(widget.married.toLowerCase()) &&
          UserListM.users[i]['son']
              .toString()
              .toLowerCase()
              .contains(widget.son.toLowerCase()) &&
          UserListM.users[i]['smoker']
              .toString()
              .toLowerCase()
              .contains(widget.smoker.toLowerCase()) &&
          UserListM.users[i]['worker']
              .toString()
              .toLowerCase()
              .contains(widget.worker.toLowerCase())) {
        lista.add(i);
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
