import 'package:filterapp/colors.dart';
import 'package:filterapp/users.dart';
import 'package:flutter/material.dart';
import 'package:filterapp/user_list.dart';

class Person extends StatelessWidget {
  final int id;

  const Person({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FilterColors.green,
        elevation: 0,
      ),
      backgroundColor: FilterColors.green,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_box_rounded,
                    color: FilterColors.white,
                    size: 120,
                  ),
                ],
              ),
            ),
            Text(
              "${UserListM.users[id]['name']}",
              style: TextStyle(
                color: FilterColors.white,
                fontSize: 27,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.4,
                // decoration: BoxDecoration(
                //   color: Colors.blue[800],
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(
                            '"${UserListM.users[id]['phrase']}"',
                            style: TextStyle(
                              color: FilterColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Text(
                            'Nome: ',
                            style: TextStyle(
                              color: FilterColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            UserListM.users[id]['nameComp'],
                            style: TextStyle(
                              color: FilterColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Idade: ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['year'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Doador: ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['doador'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Tipo: ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['blood'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Cidade: ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['city'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Estado: ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['state'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Casado(a): ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['married'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Possui FIlho(s): ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['son'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Fumante: ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['smoker'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Trabalha: ',
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserListM.users[id]['worker'],
                          style: TextStyle(
                            color: FilterColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    //
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
