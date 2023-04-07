import 'package:flutter/material.dart';
import 'package:photo_frame/Home_screen/Home_.dart';
import 'package:photo_frame/Home_screen/modal.dart';

class Add_Con extends StatefulWidget {
  const Add_Con({Key? key}) : super(key: key);

  @override
  State<Add_Con> createState() => _Add_ConState();
}

class _Add_ConState extends State<Add_Con> {
  TextEditingController txtname =TextEditingController();
  TextEditingController txtcon =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          TextField(
            controller:txtname ,
            decoration: InputDecoration(
              border:OutlineInputBorder(

                borderSide:BorderSide(color: Colors.blue.shade100,width: 2)
              ),
              labelText:'Name',
            ),

          ),
          SizedBox(height: 10),

          TextField(controller: txtcon,
            decoration: InputDecoration(
              border:OutlineInputBorder(

                borderSide:BorderSide(color: Colors.blue.shade100,width: 2)
              ),
              labelText:'Contact No',
            ),

          ),
          ElevatedButton(onPressed: () {


            String name =txtname.text;
            String contact =txtcon.text;

            ContavtModal c1 =ContavtModal(name: name,no: contact);
            contactList.add(c1);
            Navigator.pop(context);

          }, child: Text("Update"))

        ],
      ),
    ),);
  }
}
