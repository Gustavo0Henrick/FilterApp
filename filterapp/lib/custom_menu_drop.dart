import 'package:filterapp/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomMenuDrop extends StatefulWidget {
  List items;
  String hint;
  Color bordercolor;
  Color iconcolor;
  Color hintcolor;
  TextEditingController tec;
  bool clear;

  CustomMenuDrop({
    Key key,
    this.items,
    this.hint = 'Selecione',
    this.tec,
    this.bordercolor = FilterColors.transparent,
    this.iconcolor = FilterColors.main_color,
    this.hintcolor = FilterColors.black54,
    this.clear = false,
  }) : super(key: key);

  @override
  _CustomMenuDropState createState() => _CustomMenuDropState();
}

class _CustomMenuDropState extends State<CustomMenuDrop> {
  String dropdownvalue;
  Future<void> limpar() async {
    if (widget.clear == true) {
      setState(() {
        widget.tec.clear();
        dropdownvalue = null;

        widget.clear = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    limpar();
  }

  @override
  Widget build(BuildContext context) {
    List<String> item = widget.items.cast<String>();
    return FutureBuilder(
      future: limpar(),
      builder: (context, snapshot) {
        return Container(
          decoration: BoxDecoration(
            color: FilterColors.white,
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
      },
    );
  }
}
