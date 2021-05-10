import 'package:flutter/material.dart';
import 'package:filterapp/user_list.dart';

class Person extends StatelessWidget {
  final int id;

  const Person({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      backgroundColor: Colors.green,
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
                    color: Colors.white,
                    size: 120,
                  ),
                ],
              ),
            ),
            Text(
              "${UserList.name[id]}",
              style: TextStyle(
                color: Colors.white,
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
                            '"${UserList.phrase[id]}"',
                            style: TextStyle(
                              color: Colors.white,
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
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            UserList.nameComp[id],
                            style: TextStyle(
                              color: Colors.white,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserList.year[id],
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserList.doador[id],
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserList.city[id],
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserList.state[id],
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserList.married[id],
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserList.son[id],
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserList.smoker[id],
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          UserList.worker[id],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Expanded(
                    //       child: RichText(
                    //         textAlign: TextAlign.justify,
                    //         text: TextSpan(
                    //           text: 'Bio: ',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w700,
                    //           ),
                    //           children: <TextSpan>[
                    //             TextSpan(
                    //                 text: UserList.name[id],
                    //                 style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 16,
                    //                   fontWeight: FontWeight.w400,
                    //                 )),
                    //           ],
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Container(
            //         width: 80,
            //         child: ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //               elevation: 5,
            //               primary: Colors.white,
            //             ),
            //             onPressed: () {},
            //             child: Icon(
            //               Icons.person_add,
            //               color: Colors.green,
            //             )),
            //       ),
            //       Container(
            //         width: 80,
            //         child: ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //               elevation: 5,
            //               primary: Colors.white,
            //             ),
            //             onPressed: () {},
            //             child: Icon(
            //               Icons.chat,
            //               color: Colors.green,
            //             )),
            //       ),
            //       Container(
            //         width: 80,
            //         child: ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //               elevation: 5,
            //               primary: Colors.white,
            //             ),
            //             onPressed: () {},
            //             child: Icon(
            //               Icons.block,
            //               color: Colors.red,
            //             )),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
