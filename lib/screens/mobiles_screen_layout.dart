import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
   MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: Text("Whatsapp",style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          actions:[
            IconButton(onPressed: (){}, icon:Icon(Icons.search),color: Colors.grey,),
            IconButton(onPressed: (){}, icon:Icon(Icons.more_vert,color: Colors.grey,)),
          ],
          bottom: TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs: [
              Tab(text: 'CHAT'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
        ) ,
        ),
        body: ContactList(),
      )
        );
  }
}