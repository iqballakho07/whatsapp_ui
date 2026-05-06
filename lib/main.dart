import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Whatsapp(),
    debugShowCheckedModeBanner: false,);
    
  }
}

class Whatsapp extends StatefulWidget {
  Whatsapp({super.key});
  @override
  State<Whatsapp> createState() => _WhatsappState();
  final ThemeData theme = ThemeData(
    primaryColor: Colors.blue,
  );
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            Row(
              children: [
              Icon(Icons.camera_alt_outlined,),
              SizedBox(width: 17,), 
              Icon(Icons.more_vert,)
              ]),
          ],
        ),
      ),
      body: Container(
        color: Colors.white70,
        width: double.infinity,
        height: double.infinity,

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
              child: Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFF0F2F5),
                ),
                child: TextField(
                  
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined,color: Colors.grey,),
                    hint: Text("Ask Meta AI or Search",style: TextStyle(color: Colors.black87,fontSize: 16),),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.white70
                      )
                    )
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
