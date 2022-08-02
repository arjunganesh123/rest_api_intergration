import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String noteId;
  const NoteModify(this.noteId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(noteId==""?"Create Note":"Edit Note"),),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Note Title",
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: "Note content",
              ),
            ),
            SizedBox(height: 10,),
            TextButton(
                onPressed: (){

                },
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(100),
                        color: Colors.blue,
                        child: const Text("Submit",style: TextStyle(color: Colors.white),),),),
            ),
          ],
        ),
      ),
    );
  }
}
