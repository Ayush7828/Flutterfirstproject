import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  const StoreItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        // width: 100,
        // height: 100,
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/50"),
          ),
          title: Text(
            "Rio Store",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Store ADD-109 C Vijay Nagar",
            maxLines: 2,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 12.0,
                color: Color(0xffBDC6CF)),
          ),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}

//https://picsum.photos/200