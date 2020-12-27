import 'package:app_fisica/componentsGlobais/item.dart';
import 'package:flutter/material.dart';

class AssuntoPage extends StatelessWidget {
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
                'Assunto 1',
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
                        color: Colors.blue[900],
                        titulo: 'Vídeo',
                        subtitulo: 'Teoria',
                        leading: Icon(
                          Icons.play_circle_fill,
                          size: 50,
                          color: Colors.blue[900],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/video');
                        },
                      ),
                      Item(
                        color: Colors.blue[900],
                        titulo: 'PDF',
                        subtitulo: 'Teoria',
                        leading: Icon(
                          Icons.picture_as_pdf,
                          size: 50,
                          color: Colors.blue[900],
                        ),
                        onPressed: () {},
                      ),
                      Item(
                        titulo: 'Questões Resolvidas',
                        subtitulo: 'Teoria',
                        color: Colors.blue[900],
                        leading: Icon(
                          Icons.play_circle_fill,
                          size: 50,
                          color: Colors.blue[900],
                        ),
                        onPressed: () {},
                      ),
                      Item(
                        titulo: 'Aplicação Real',
                        subtitulo: 'Teoria',
                        color: Colors.blue[900],
                        leading: Icon(
                          Icons.play_circle_fill,
                          size: 50,
                          color: Colors.blue[900],
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
