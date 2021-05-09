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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Person(id: index)));
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text(
                  UserList.name[widget.lista[index]],
                  style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '${UserList.city[widget.lista[index]]} | ${UserList.state[widget.lista[index]]}\n${UserList.name[widget.lista[index]]}',
                  style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.person,
                    color: Colors.green[800],
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
