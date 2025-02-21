import 'package:flutter/material.dart';

import '../../detail/detail_page.dart';

class NoteItem extends StatelessWidget {
  final String title;
  final String desc;
  final IconData icon;
  const NoteItem({Key? key, required this.title, required this.desc, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(title: title, desc: desc, icon: icon)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: EdgeInsets.only(bottom: 10),
        //height: 200,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.08),
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 90,
              child: Text(title,
                  style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'ceraBold')),
            ),
            SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              child: Text(desc,
                style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,), textAlign: TextAlign.start,),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Icon(icon as IconData?),
                Icon(icon),
                //SizedBox(width: 5,),
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 20,
                  child: VerticalDivider(width: 30, color: Colors.black,),
                ),
                Text("wireframe",
                  style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,),),
                Spacer(),
                Text("2020/05/09",
                  style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 15,),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
