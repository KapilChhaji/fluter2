import 'package:flutter/material.dart';
import './list.dart' show Listex;
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _register();

}

class _register extends State<register> {

  bool  _passwordVisible= false;
  void initstate(){
    super.initState();
    _passwordVisible = false;
  }



  @override
  Widget build(BuildContext context) {
    return Material(

        child: Container(
          //decoration: const BoxDecoration(
          //  image : DecorationImage(image: AssetImage("assets/images/a.jpeg"),
           //     fit: BoxFit.cover),
         // ),
          child: ListView(

            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Image.asset('assets/images/a.png' ,   height : 50,
                        width : 50),
                  ),
                  TextButton(
                    child: const Text(
                      '<<Back',
                      style: TextStyle(fontSize: 20 , color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      //signup screen
                    },
                  ),
                ],

              ),

              Container(

                  padding: const EdgeInsets.all(10),
                  child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.black)
                  )),


              const Text('   Enter your information below, You may change it later',
                style: TextStyle( fontSize: 12,  color: Colors.black, ), ),


              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(

                  decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User name',
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(

                  decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full name',
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(

                  decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
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
                    //forgot password screen
                  },

                  child: const Align(
                    alignment: Alignment.centerLeft,

                    child :  Text(' I accept the privacy policy and terms and conditions',style: TextStyle( fontSize: 15,  color: Colors.black , ), ),


                  )

              ),

              const SizedBox(

                height: 50,
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text(
                        'Slide ',
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.black)
                    ),
                    onPressed: () {

                    },
                  )
              ),



              TextButton(
                child: const Text(
                  'List',
                  style: TextStyle(fontSize: 20 , color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>  const Listex(title: '',)),
                  );
                },
              ),

              Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[


                  TextButton(
                    child: const Text(
                      'Already have account?',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      //signup screen
                    },
                  ),

                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20 , color: Colors.blue),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
              ),
              const SizedBox(height: 10,),
              const SizedBox(height: 10,),

            ],
          ),
        ));
  }
}