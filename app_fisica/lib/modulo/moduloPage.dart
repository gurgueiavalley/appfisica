import 'package:app_fisica/componentsGlobais/item.dart';
import 'package:flutter/material.dart';

class ModuloPage extends StatefulWidget {
  @override
  _ModuloPageState createState() => _ModuloPageState();
}

class _ModuloPageState extends State<ModuloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            expandedHeight: 200,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Modulo 1',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff2E62F2),
                      Color(0xff2EF2F2),
                    ],
                    begin: Alignment.bottomLeft,
                  ),
                ),
              ),
              titlePadding: EdgeInsets.only(
                bottom: 20,
                left: 20,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Item(
                        titulo: 'Assunto 1',
                        subtitulo: 'Teoria',
                        color: Colors.blue[900],
                        leading: Icon(
                          Icons.check_circle,
                          size: 50,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/assunto');
                        },
                      ),
                      Item(
                        titulo: 'Assunto 2',
                        subtitulo: 'Teoria',
                        color: Colors.blue[900],
                        leading: Icon(
                          Icons.info,
                          size: 50,
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
