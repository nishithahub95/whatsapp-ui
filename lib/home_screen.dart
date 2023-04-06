import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:const Text('WhatsApp'),
          bottom:const TabBar(
            tabs:[
             Tab(child: Icon(Icons.groups)),
             Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls'))
            ],
          ),
          actions: [
            const  Icon(Icons.camera_alt),
            const SizedBox(width: 10,),
            const Icon(Icons.search),
            const SizedBox(width: 10,),
            PopupMenuButton(itemBuilder: (context)=>[
                   const PopupMenuItem(
                        value: 1,
                        child: Text('New group')),
              const PopupMenuItem(
                  value: 2,
                  child: Text('New broadcast')),

              const PopupMenuItem(
                  value: 3,
                  child: Text('Payments')),
              const PopupMenuItem(
                  value: 4,
                  child: Text('Settings'))
            ]),
            const  SizedBox(width: 10,),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Tab1'),
           ListView.builder(itemCount: 20,itemBuilder: (context,index){

             return ListTile(
               leading: CircleAvatar(
                 backgroundImage: NetworkImage('https://images.pexels.com/photos/1310474/pexels-photo-1310474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),

               ),
               title: Text('Ann Mariya'),
               subtitle: Text('New movie released'),
               trailing: Text('12:30 PM'),
             );
           }),
            ListView.builder(itemCount: 20,itemBuilder: (context,index){

              return  ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green
                    ,width: 3)
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/1310474/pexels-photo-1310474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),

                  ),
                ),
                title: Text('Ann Mariya'),
                subtitle: Text('yesterday 6:00 P M'),

              );
            }),
        ListView.builder(itemCount: 20,itemBuilder: (context,index){

          return  ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://images.pexels.com/photos/1310474/pexels-photo-1310474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),

            ),
            title: Text('Ann Mariya'),
            subtitle: Text('yesterday 6:00 P M'),
            trailing: Icon(index/2==0?Icons.call:Icons.video_call),
          );
        }),
          ],
        )

      ),
    );
  }
}
