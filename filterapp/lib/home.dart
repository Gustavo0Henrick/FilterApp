import 'package:filterapp/colors.dart';
import 'package:filterapp/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool bottom = false;
  TextEditingController otec1 = TextEditingController();
  String hint1 = "Selecione";

  String txt;

  @override
  Widget build(BuildContext context) {
    otec1.text = "Vazio";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FilterColors.main_color,
        centerTitle: true,
        title: Text(
          'Filter Demo',
          style: TextStyle(color: FilterColors.white),
        ),
        elevation: 0,
      ),
      backgroundColor: FilterColors.main_color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              'Busque as pessoas cadastradas selecionando os filtros de busca.',
              style: TextStyle(
                color: FilterColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80),
            child: Container(
              padding: EdgeInsets.all(3),
              height: 40,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: FilterColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Buscar',
                      style: TextStyle(
                          color: FilterColors.main_color,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.search,
                      color: FilterColors.main_color,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
