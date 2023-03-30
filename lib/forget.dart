import 'package:flutter/material.dart';


class forget extends StatefulWidget {
  const forget({Key? key}) : super(key: key);

  @override
  State<forget> createState() => _forget();

}

class _forget extends State<forget> {

  void initstate(){
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Material (


        child: Container(
          //decoration: const BoxDecoration(
           // image : DecorationImage(image: AssetImage("assets/images/a.jpeg"),
            //    fit: BoxFit.cover),
        //  ),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                const SizedBox(

                  height: 10,
                ),



                Padding(
                  padding: const EdgeInsets.only(right: 290.0),
                  child: TextButton(
                    child: const Text(
                      '<<Back',
                      style: TextStyle(fontSize: 20 , color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      //signup screen
                    },
                  ),
                ),


                const SizedBox(

                    height:10
                ),

                Container(

                    padding: const EdgeInsets.all(5),
                    child: const Text(
                        'Forger Your Password?',
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.black)
                    )),


                const Text(
                    '  Please Enter your  information below to create a new one',
                    style: TextStyle(fontSize:13 , color: Colors.black)
                ),
                const SizedBox(

                  height: 10,
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                  child: const TextField(

                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'email',
                    ),
                  ),
                ),



                const SizedBox(

                  height: 10,
                ),


                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                    child: ElevatedButton(
                      child: const Text(
                          'Reset Paswword',
                          style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.black)
                      ),
                      onPressed: () {

                      },
                    )
                ),

              ],
            ),
          ),
        ));
  }
}