import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0, // yenahi khte les bin Apppbar ou body
      titleSpacing: 12.0,
      title: Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            'Chats',
            style: TextStyle(color: Colors.black, fontSize: 25.0),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.camera_alt,
              size: 16.0,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.edit,
              size: 16.0,
            ),
          ),
        )
      ],
    );
  }
}
