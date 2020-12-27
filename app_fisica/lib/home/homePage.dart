import 'package:app_fisica/componentsGlobais/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                'Modulos',
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
            actions: [
              IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              )
            ],
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
                        titulo: 'Modulo I',
                        subtitulo: 'Modulos iniciais',
                        onPressed: () {
                          Navigator.pushNamed(context, '/modulo');
                        },
                      ),
                      Item(
                        titulo: 'Modulo II',
                        subtitulo: 'Modulos iniciais',
                        onPressed: () {
                          Navigator.pushNamed(context, '/modulo');
                        },
                      ),
                      Item(
                        titulo: 'Modulo III',
                        subtitulo: 'Modulos iniciais',
                        onPressed: () {
                          Navigator.pushNamed(context, '/modulo');
                        },
                      ),
                      Item(
                        titulo: 'Modulo IV',
                        subtitulo: 'Modulos iniciais',
                        onPressed: () {
                          Navigator.pushNamed(context, '/modulo');
                        },
                      ),
                      Item(
                        titulo: 'Modulo V',
                        subtitulo: 'Modulos iniciais',
                        onPressed: () {
                          Navigator.pushNamed(context, '/modulo');
                        },
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
