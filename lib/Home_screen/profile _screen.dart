import 'package:flutter/material.dart';
import 'package:photo_frame/Home_screen/Home_.dart';
import 'package:photo_frame/Home_screen/modal.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  int? index;
  @override
  Widget build(BuildContext context) {
    ContavtModal? c = ModalRoute.of(context)!.settings.arguments as ContavtModal;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
              ),
              Text("${c.name}"),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     // IconButton(onPressed: () async {
              //     //
              //     //   String link = "tel: ${contactList[index!].no}";
              //     //   await launchUrl(Uri.parse(link));
              //     //
              //     //
              //     //
              //     // }, icon: Icon(Icons.call,color: Colors.green,)),
              //     IconButton(onPressed: () {
              //
              //     }, icon: Icon(Icons.share,color: Colors.amber,)),
              //     IconButton(onPressed: () {
              //
              //     }, icon: Icon(Icons.message,color: Colors.blue,)),
              //   ],
              // )
              // Expanded(
              //   child: ListView.builder(itemBuilder: (context, index) {
              //     return button(index,contactList[index].no,);
              //   },),
              // )

            ],
          ),
        ),
      ),
    ),);
  }
  Widget button(int index,String? no)
  {
    return Row(
      children: [
        Text("$no"),
        IconButton(onPressed: () async {


          String link = "tel: ${contactList[index].no}";
          await launchUrl(Uri.parse(link));


        }, icon: Icon(Icons.call, color: Colors.green,))
      ],
    );
  }
  Widget mywidget( String? pho, int index) {
    return ExpansionTile(
      title: Text("hyy"),
      leading: Icon(Icons.phone),
      subtitle: Text("$pho", style: TextStyle(color: Colors.blueGrey),),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            IconButton(onPressed: () {
              setState(() {
                contactList.removeAt(index);
              });
            }, icon: Icon(Icons.delete, color: Colors.red,)),
            IconButton(onPressed: () {
              setState(() {
                Navigator.pushNamed(
                    context, 'con', arguments: contactList[index]);
              });
            }, icon: Icon(Icons.next_plan, color: Colors.blue,)),
            IconButton(onPressed: () async {


              String link = "tel: ${contactList[index].no}";
              await launchUrl(Uri.parse(link));


            }, icon: Icon(Icons.call, color: Colors.green,)),
            IconButton(onPressed: () async {
              // String link = "sms: ${contactList[index].phone}?body=Hello I Invalied to My App";
              Uri uri = Uri(scheme: "sms",
                  path: "${contactList[index].no}",
                  queryParameters: {"body": "hello,Hyy"});
              //await launchUrl(Uri.parse(link));
              await launchUrl(uri);
            }, icon: Icon(Icons.message, color: Colors.amber,)),
          ],
        )
      ],
    );
  }

}
