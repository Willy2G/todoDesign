import 'package:course/screens/home/class/Note.dart';
import 'package:course/screens/home/widgets/note_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget{
  //HomePage({required this.noteList});
  //final List<Note> noteList;
  //final List<String> titleList = ["How to draw a professional wireframe ?", "How to draw a professional template ?", "How to draw a professional webpage ?"];
  final List<Note> note = [Note(title: "Ttitre1", desc: "desc1", icon: Icons.verified_user), Note(title: "Ttitre2", desc: "desc2", icon: Icons.abc), Note(title: "Ttitre3", desc: "desc3", icon: Icons.abc)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Todo Page", style: TextStyle(color: Colors.black, fontFamily: 'ceraBold'),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: ListView.builder(
          itemCount: this.note.length,
          itemBuilder: (context, i){
            return NoteItem(title: this.note[i].title, desc: this.note[i].desc, icon: this.note[i].icon,);
          },
        )

      ),
    );
  }
}