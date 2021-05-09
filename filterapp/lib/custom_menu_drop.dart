import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomMenuDrop extends StatefulWidget {
  List items;
  String hint;
  Color bordercolor;
  Color iconcolor;
  Color hintcolor;
  TextEditingController tec;

  CustomMenuDrop({
    Key key,
    this.items,
    this.hint = 'Selecione',
    this.tec,
    this.bordercolor = Colors.transparent,
    this.iconcolor = Colors.green,
    this.hintcolor = Colors.black54,
  }) : super(key: key);

  @override
  _CustomMenuDropState createState() => _CustomMenuDropState();
}

class _CustomMenuDropState extends State<CustomMenuDrop> {
  String dropdownvalue;
  @override
  Widget build(BuildContext context) {
    List<String> item = widget.items.cast<String>();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: widget.bordercolor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        hint: Center(
          child: Text(
            widget.hint,
            style: TextStyle(color: widget.hintcolor),
          ),
        ),
        value: dropdownvalue,
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: widget.iconcolor,
          size: 32,
        ),
        isExpanded: true,
        underline: SizedBox(),
        items: item.map((String items) {
          return DropdownMenuItem(
              value: items, child: Center(child: Text(items)));
        }).toList(),
        onChanged: (String newValue) {
          setState(
            () {
              dropdownvalue = newValue;
              widget.tec.text = dropdownvalue;
            },
          );
        },
      ),
    );
  }
}
