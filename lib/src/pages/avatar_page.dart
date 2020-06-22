import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: [

          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.eluniverso.com/sites/default/files/styles/powgallery_1024/public/fotos/2020/01/iron-man-no-muerto.jpg?itok=5_JAIjLi'),
              radius: 20.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('FR'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://www.show.news/__export/1568656839941/sites/debate/img/2019/09/16/iron_crop1568656773199.jpg_423682103.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),

      ),
    );
  }
}
