import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  // addtaskoffirebasea() async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   final FirebaseUser user = await auth.currentUser!();
  //   String uid = user.uid;
  //   var time = DateTime.now();
  //   await Firestore.instance
  //       .collection('tasks')
  //       .document(uid)
  //       .collection('mytask')
  //       .document(time.toString())
  //       .setData({
  //     'title': titlecontroller.text,
  //     'description': descriptioncontroller.text,
  //     'time': time.toString()
  //   });
  //   Fluttertoast.showToast(msg: 'Data added');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Task')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                    labelText: 'Enter Title', border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                controller: descriptioncontroller,
                decoration: InputDecoration(
                    labelText: 'Enter Description',
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor:
                      MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.green;

                    return Colors.purple;
                  })),
                  onPressed: () {},
                  child: Text(
                    'Add task',
                    style: GoogleFonts.roboto(fontSize: 18),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
