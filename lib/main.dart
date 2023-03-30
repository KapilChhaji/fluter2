import 'package:flutter/material.dart';
import './forget.dart' show forget;
import './register.dart' show register;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Scaffold(

        // appBar: AppBar(title: const Text(_title)),
        body:  MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  bool  _passwordVisible= false;
  void initstate(){
    super.initState();
    _passwordVisible = false;
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: Container(

         // decoration: const BoxDecoration(
           // image : DecorationImage(image: AssetImage("assets/images/a.png"),
            //    fit: BoxFit.cover),
       //   ),
          child: ListView(
            children: <Widget>[
              Container   (
                  padding: const EdgeInsets.only(right : 300),


                  child : Image.asset("assets/images/a.png" ,   height : 50,
                      width : 50)),

              Container(

                  padding: const EdgeInsets.all(10),
                  child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.white)
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(

                  decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your User Name and Email',
                  ),
                ),
              ),


              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Type Your Password',

                    suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        }
                    ),
                  ),
                ),
              ),

              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const forget()),
                    );
                    //forgot password screen
                  },

                  child: const Align(
                    alignment: Alignment.centerLeft,

                    child :  Text(' I Forgot My Password',style: TextStyle( fontSize: 20,  color: Colors.blue , ), ),


                  )

              ),

              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.black)
                    ),
                    onPressed: () {

                    },
                  )
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[

                  const Text('Does not have account?'),


                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const register()),
                      );
                      //forgot password screen
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20 , color: Colors.blue),
                    ),

                  )
                ],
              ),
            ],
          ),
        ));
  }
}


