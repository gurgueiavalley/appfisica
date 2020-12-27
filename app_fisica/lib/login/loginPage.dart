import 'package:app_fisica/login/components/botao.dart';
import 'package:app_fisica/login/components/input.dart';
import 'package:app_fisica/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2EF2F2),
              Color(0xff2E62F2),
            ],
            begin: Alignment.bottomLeft,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'lib/assets/atomo.png',
                width: 100,
              ),
            ),
            Text(
              'Física',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
              textAlign: TextAlign.center,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 20,
                  bottom: 15,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tap = !tap;
                        });
                        print('object');
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.only(
                          bottom: 30,
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          border: Border.all(
                            color: Colors.blue,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            AnimatedAlign(
                              duration: Duration(milliseconds: 150),
                              alignment: tap
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Container(
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width * 0.14,
                                  ),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: tap ? Colors.blue : Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: size.width * 0.09,
                                  ),
                                  child: Text(
                                    'Cadastrar',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: tap ? Colors.white : Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: tap,
                      child: Column(
                        children: [
                          // cadatrar
                          Input(
                            hint: 'E-mail',
                            icon: Icon(Icons.email),
                          ),
                          Input(
                            hint: 'Senha',
                            icon: Icon(Icons.lock),
                          ),
                          Input(
                            hint: 'Repita a Senha',
                            icon: Icon(Icons.lock),
                          ),
                          Botao(
                            text: 'Cadastrar',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      replacement: Column(
                        children: [
                          //login
                          Input(
                            hint: 'E-mail',
                            icon: Icon(Icons.email),
                          ),
                          Input(
                            hint: 'Senha',
                            icon: Icon(Icons.lock),
                          ),
                          Botao(
                            text: 'Entrar',
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
