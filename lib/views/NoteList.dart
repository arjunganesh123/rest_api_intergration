import 'package:flutter/material.dart';
import 'package:rest_intergration/views/Notes_of_listing.dart';
import 'package:rest_intergration/views/note_modify.dart';

class NoteList extends StatelessWidget {
  List<NotesOfListing> notes=<NotesOfListing>[
    NotesOfListing(notesid: "1", notetitle: "Note 1", createddatetime: DateTime.now(), updatedatetime: DateTime.now()),
    NotesOfListing(notesid: "2", notetitle: "Note 2", createddatetime: DateTime.now(), updatedatetime: DateTime.now()),
    NotesOfListing(notesid: "3", notetitle: "Note 3", createddatetime: DateTime.now(), updatedatetime: DateTime.now()),
  ];
  NoteList({Key? key}) : super(key: key);

  String formateDateTime(DateTime d){
    return "${d.day}/${d.month}/${d.year}";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List of notes"),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> NoteModify("")));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: (context, index){
            return Dismissible(
              key: ValueKey(notes[index].notesid),
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NoteModify("${notes[index].notesid}")));
                },
                title: Text(notes[index].notetitle,style: TextStyle(color: Colors.blue),),
                subtitle: Text("Last edited on ${formateDateTime(notes[index].updatedatetime)}"),
              ),
            );
          },
          separatorBuilder: (context,index){
            return Divider(height: 1,color: Colors.black,);
            },
          itemCount: notes.length,
      ),
    );
  }
}
