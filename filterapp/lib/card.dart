import 'package:filterapp/colors.dart';
import 'package:filterapp/person.dart';
import 'package:filterapp/user_list.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final List lista;

  const CustomCard({Key key, this.lista}) : super(key: key);
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.lista.length,
      itemBuilder: (_, index) {
        return Container(
          height: 75,
          padding: EdgeInsets.only(top: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Person(id: widget.lista[index])));
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                title: Text(
                  UserList.name[widget.lista[index]],
                  style: TextStyle(
                      color: FilterColors.main_color,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '${UserList.city[widget.lista[index]]} - ${UserList.state[widget.lista[index]]}\nDoador: ${UserList.doador[widget.lista[index]]}',
                  style: TextStyle(
                    color: FilterColors.main_color,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.person,
                    size: 48,
                    color: FilterColors.main_color,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
