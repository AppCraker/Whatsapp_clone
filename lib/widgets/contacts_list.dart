import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: 
          ListView.builder(
            itemCount: info.length,
            shrinkWrap: true,
            itemBuilder:(context , index){
              return Column(
                children: [
                  InkWell(
                    onTap: (){
                      
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 15),),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(info[index]['message'].toString(),style: TextStyle(fontSize: 15),),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            info[index]['profilePic'].toString()
                          ),
                          
                        ),
                        trailing: Text(info[index]['time'].toString(),style: TextStyle(fontSize: 13,color: Colors.grey),),
                      ),
                    ),
                  ),
                  const Divider(
                         color: dividerColor,
                          indent: 85,
                    )
                ],
              );
            },
          ),
      );
  }
}