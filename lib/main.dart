import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Whatsapp(), debugShowCheckedModeBanner: false);
  }
}

class Whatsapp extends StatefulWidget {
  Whatsapp({super.key});
  @override
  State<Whatsapp> createState() => _WhatsappState();
  final ThemeData theme = ThemeData(primaryColor: Colors.blue);
}

class _WhatsappState extends State<Whatsapp> {
  var names = [
    "Iqbal",
    "Sarang",
    "Anna",
    "Ahmed",
    "Mushtaque",
    "Alexa",
    "Iqbal2",
    "sarang2",
    "Mia",
    "MB",
    "sher",
    "saima",
    "Ali",
  ];
  // var imagePath = [""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Row(
              children: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(width: 17),
                Icon(Icons.more_vert),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [Icon(Icons.chat), Text("Chats")]),
              Column(children: [Icon(Icons.update), Text("Updates")]),
              Column(
                children: [Icon(Icons.people_outline), Text("Communities")],
              ),
              Column(children: [Icon(Icons.call), Text("Calls")]),
            ],
          ),
        ),
      ),

      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            //Search Textfield
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFF0F2F5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined, color: Colors.grey),
                    hint: Text(
                      "Ask Meta AI or Search",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            
            Container(
              child: Row(
                    children: [
                      TextButton(onPressed: (){}, child: Text("All",style: TextStyle(color: Colors.grey),),
                      style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.grey,
                      ),
                      ),
                      ),
                      TextButton(onPressed: (){}, child: Text("Unread",style: TextStyle(color: Colors.grey),),
                        style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.grey,
                      ),
                      ),),
                      TextButton(onPressed: (){}, child: Text("Favourite",style: TextStyle(color: Colors.grey),),
                        style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.grey,
                      ),
                      ),),
                      TextButton(onPressed: (){}, child: Text("Groups",style: TextStyle(color: Colors.grey),),
                        style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.grey,
                      ),
                      ),),
                       TextButton(onPressed: (){}, child: Text("+",style: TextStyle(color: Colors.grey),),
                        style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.grey,
                      ),
                      ),)
            
                    ],
                  ),
            ),

            // ListView for contact chat
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {                  
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/${names[index]}.jpeg",
                      ),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text("Hello, how are you?"),
                    trailing: Text("12:00 PM"),
                  );
                },
                itemCount: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
