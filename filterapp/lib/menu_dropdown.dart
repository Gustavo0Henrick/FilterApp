import 'package:filterapp/custom_menu_drop.dart';
import 'package:filterapp/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenuDrop extends StatefulWidget {
  TextEditingController txt;
  double list;

  MenuDrop({
    Key key,
    this.txt,
    this.list,
  }) : super(key: key);
  @override
  _MenuDropState createState() => _MenuDropState();
}

class _MenuDropState extends State<MenuDrop> {
  String selectItem;
  @override
  Widget build(BuildContext context) {
    double tam = widget.list;
    return GestureDetector(
      onTap: () {
        setState(
          () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  // retorna um objeto do tipo Dialog
                  return AlertDialog(
                    
                    contentPadding: EdgeInsets.all(10),
                    content: Container(
                      height: 50 * tam,
                      child: Column(children: [
                        Row(children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,

                                primary: Colors.transparent,
                                // animationDuration: Duration(microseconds: 0),
                              ),
                              onPressed: () {
                                setState(() {
                                  selectItem = "teste 1";
                                  widget.txt.text = selectItem;
                                  Navigator.of(context).pop();
                                });
                              },
                              child: Text(
                                "teste 1",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                        ]),
                        Row(children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,

                                primary: Colors.transparent,
                                // animationDuration: Duration(microseconds: 0),
                              ),
                              onPressed: () {
                                setState(() {
                                  selectItem = "teste 2";
                                  widget.txt.text = selectItem;
                                  Navigator.of(context).pop();
                                });
                              },
                              child: Text(
                                "teste 2",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                        ]),
                        Row(children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,

                                primary: Colors.transparent,
                                // animationDuration: Duration(microseconds: 0),
                              ),
                              onPressed: () {
                                setState(() {
                                  selectItem = "teste 3";
                                  widget.txt.text = selectItem;
                                  Navigator.of(context).pop();
                                });
                              },
                              child: Text(
                                "teste 3",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                        ]),
                      ]),
                    ),
                  );
                });
          },
        );
      },
      child: Container(
        height: 30,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          Text(
            widget.txt.text,
            style: TextStyle(color: Colors.black),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.green,
          ),
        ]),
      ),
    );
  }
}
