import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_bord/domain/entities/note.dart';
import 'package:pin_bord/presentation/bloc/note/note_bloc.dart';
import 'package:pin_bord/presentation/widget/app_text_field.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  final TextEditingController titleTextController = TextEditingController();
  final TextEditingController contentTextController = TextEditingController();
  Color selectedColor = Colors.yellowAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selectedColor,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 400.0, vertical: 40.0),
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: Column(
          children: <Widget>[
            const Center(
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'Create Note',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
            ),
            // rounded border edit text
            AppTextField(
                textEditingController: titleTextController,
                hintText: "Title",
                maxLength: 1,
                icon: Icons.edit),
            const SizedBox(height: 20),
            AppTextField(
              textEditingController: contentTextController,
              hintText: "Content",
              icon: Icons.accessible,
              maxLength: 20,
              fontSize: 18,
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  final note = Note(
                      id: 8549,
                      title: titleTextController.text,
                      content: contentTextController.text,
                      createdAt: DateTime.now(),
                      updatedAt: DateTime.now(),
                      position: const Offset(150, 150),
                      color: selectedColor);

                  BlocProvider.of<NoteBloc>(context)
                      .add(AddNoteEvent(note: note));
                },
                child: const Text(
                  "Save Note",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    selectableColor.length,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedColor = selectableColor[index];
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            width: 31,
                            height: 31,
                            color: Colors.black,
                            child: Center(
                              child: Container(
                                height: 30,
                                width: 30,
                                color: selectableColor[index],
                              ),
                            ),
                          ),
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final selectableColor = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
];
