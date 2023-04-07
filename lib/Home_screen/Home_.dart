import 'package:flutter/material.dart';
import 'package:photo_frame/Home_screen/modal.dart';

List<ContavtModal> contactList=[
  ContavtModal(name: 'Ratan Tata',no: '7845218965'),
  ContavtModal(name: 'Kumar Birla',no: '896218965'),
  ContavtModal(name: 'Mukesh Ambani',no: '9966528965'),
  ContavtModal(name: 'Gutam Adani',no: '996633875'),
  ContavtModal(name: 'Radakrishna Damani',no: '896523215'),
  ContavtModal(name: 'Anad Mahinra',no: '8965875421'),
  ContavtModal(name: 'Dixit Patoliya',no: '9512889686'),
  ContavtModal(name: 'Dixit Patoliya',no: '9512889686'),
  ContavtModal(name: 'Dixit Patoliya',no: '9512889686'),
];


class Home_ extends StatefulWidget {
  const Home_({Key? key}) : super(key: key);

  @override
  State<Home_> createState() => _Home_State();
}

class _Home_State extends State<Home_> {



  List fav= [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Contacts",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(500)),
                  child: TextFormField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "===serch====",
                        hintStyle:
                        TextStyle(fontSize: 18, color: Colors.black38),
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.black38,
                        )),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade100),
                  child: ListTile(
                    title: Text(
                      "Dixit Patel",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blue.shade900),
                    ),
                    subtitle: Text("My Details",style: TextStyle(color: Colors.black),),
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      //child: Image.asset("assets/image/m1.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(height: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My Contact",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(height: 10),

                Column(
                  children: contactList.asMap().entries.map((e) => contact(contactList[e.key], e.key)).toList(),
                )

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(


        onTap: (value) {
          setState(() {

          });
        },

        items: [
          BottomNavigationBarItem(icon: InkWell(onTap: () {

          },child: Icon(Icons.grid_view_rounded,size: 30)),label: "",activeIcon: Icon(Icons.grid_view_rounded,size: 30,)),
          BottomNavigationBarItem(icon: InkWell(onTap: () {




            setState(() {
              Navigator.pushNamed(context, 'favorite');

            });

          },child: Icon(Icons.star_rounded,size: 30)),label: "",activeIcon: Icon(Icons.star,size: 30,)),
          BottomNavigationBarItem(icon: InkWell(onTap: () {

            setState(() {
              Navigator.pushNamed(context, 'Recent');

            });

          },child: Icon(Icons.watch_later,size: 30)),label: "",activeIcon: Icon(Icons.watch_later,size: 30,)),
          BottomNavigationBarItem(icon: InkWell(child: Icon(Icons.person,size: 30)),label: "",activeIcon: Icon(Icons.person,size: 30,)),
          BottomNavigationBarItem(icon: InkWell(onTap: () {


            Navigator.pushNamed(context, 'add').then((value) {
              setState(() {

              });
            });


          },child: Icon(Icons.add,size: 30)),label: "",activeIcon: Icon(Icons.person,size: 30,)),
        ],

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black12,

      ),

    );
  }
  Widget contact(ContavtModal c1 ,int index)
  {
    return InkWell(onTap: () {
      ContavtModal c1 =ContavtModal();
      Navigator.pushNamed(context, 'profile',arguments: contactList[index]);
    },
      child: Container(
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue.shade100
        ),
        child: ListTile(
          title: Text("${c1.name}",style: TextStyle(fontSize: 18,color: Colors.blue.shade900),),
          subtitle: Text("${c1.no}",style: TextStyle(color: Colors.black),),
          trailing: PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(child: IconButton(onPressed: () {
              setState(() {
                contactList.removeAt(index);
              });
            }, icon: Icon(Icons.delete, color: Colors.blue.shade100,)),)

          ],)
        ),
      ),
    );
  }
}
