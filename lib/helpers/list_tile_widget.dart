import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key, required this.title, required this.navigation}) : super(key: key);
  final String title;
  final Widget navigation;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: const TextStyle(
          fontSize: 18,
          letterSpacing: 2,
          color: Colors.white),),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => navigation));
      },
      trailing: Icon(Icons.chevron_right_outlined,
        color: Colors.white.withOpacity(0.5),),
    );
  }
}
