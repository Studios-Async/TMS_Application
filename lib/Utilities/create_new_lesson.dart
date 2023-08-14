import 'package:flutter/material.dart';
import 'package:tms/Utilities/lessons_created.dart';

class NewLesson extends StatefulWidget {
  final DateTime selectedDay; // Receive selected day from parent
  const NewLesson({Key? key, required this.selectedDay});

  @override
  State<NewLesson> createState() => _NewLessonState();
}

class _NewLessonState extends State<NewLesson> {
  TextEditingController _lessonController = TextEditingController();
  Map<DateTime, List<Lesson>> lesson = {}; //Stores created lessons

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              scrollable: true,
              title: Text("Lesson"),
              content: Padding(
                padding: EdgeInsetsDirectional.all(8),
                child: TextField(
                  controller: _lessonController,
                ),
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      lesson.addAll({
                        widget.selectedDay: [Lesson(_lessonController.text)]
                      });
                      Navigator.of(context).pop;
                    },
                    child: const Text("Submit"))
              ],
            );
          },
        );
      },
      mini: true,
      child: const Icon(Icons.add),
    );
  }
}
