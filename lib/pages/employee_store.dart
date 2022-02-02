import 'package:flutter/material.dart';
import 'package:login/utils/routes.dart';

class EmployeeItem extends StatelessWidget {
  const EmployeeItem({Key? key}) : super(key: key);

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
        child: InkWell(
          child: ListTile(
            isThreeLine: true,
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.johnPage);
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/50"),
            ),
            title: Text(
              "John Reo",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Store ADD-109 C Vijay Nagar",
                  maxLines: 2,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0,
                      color: Color(0xffBDC6CF)),
                ),
                SizedBox(
                  height: 9.0,
                ),
                Text(
                  'SHIFT TIME-10:00 AM TO 3:00 PM',
                  style: TextStyle(
                      color: Color(0xffFD9317),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins"),
                )
              ],
            ),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
      ),
    );
  }
}
