import 'package:flutter/material.dart';

class Listex extends StatefulWidget {
  const Listex({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Listex> createState() => _Listex();
}

class _Listex extends State<Listex> {
  final _controllerffname = TextEditingController();
  int count = 0;
  late final List<User> list = [];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Text(
                  'LIST ',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),

                TextButton(
                  onPressed: () {
                    setState(() {
                      count=1;
                    });
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(left: 240.0),
                    child: const Text(
                      'Select', style: TextStyle(fontSize: 20 ),

                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  //padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: _controllerffname,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Add'),
                      onPressed: () {
                        setState(() {
                          if (_controllerffname.text != "") {
                            list.add(User(_controllerffname.text, false));
                            _controllerffname.clear();
                          }
                        });
                      },
                    )),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      textColor: (index % 2 == 0) ? Colors.red : Colors.blue,
                      title: Text(list[index].title),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                            Checkbox(
                              checkColor: Colors.white,
                              //fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: list[index].isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  list[index].isChecked = value!;
                                });
                              },
                            ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  list.removeAt(index);
                                });
                              },
                              icon: const Icon(
                                Icons.delete,
                                size: 30.0,
                              )),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  var title = "";
  var isChecked = false;

  User(this.title, this.isChecked);
}
