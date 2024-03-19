import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';
class WebScreenLayout extends StatelessWidget {
   WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
          
                    ContactList(),
                  ],
                ),
              ),
            ),
            //web screen
            Container(
              width: MediaQuery.of(context).size.width*0.75,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.fill)
              ),
               
            )
        ],)
    );
  }
}