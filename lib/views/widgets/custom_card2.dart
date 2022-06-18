import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2(List lista, int index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 139, 215, 250),
                  minRadius: 40.0,
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://www.attendit.net/images/easyblog_shared/July_2018/7-4-18/totw_network_profile_400.jpg"),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Column(
              children: const [
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Flexible(
                child: Column(
              children: [
                ListTile(
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.navigate_next,
                      size: 20,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      print("next");
                    },
                  ),
                  title: const Text('Client Full Name'),
                  subtitle: Text(
                    'Car model',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}


// Row(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(
//                   Icons.favorite_border,
//                   size: 20.0,
//                   color: Colors.brown[900],
//                 ),
//                 onPressed: () {
//                   //   _onDeleteItemPressed(index);
//                 },
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.delete_outline,
//                   size: 20.0,
//                   color: Colors.brown[900],
//                 ),
//                 onPressed: () {
//                   //   _onDeleteItemPressed(index);
//                 },
//               ),
//             ],
//           )