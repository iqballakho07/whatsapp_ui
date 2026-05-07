import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  final List<String> names = [
    "Iqbal",
    "Sarang",
    "Anna",
    "Ahmed",
    "Alexa",
    "Iqbal2",
    "sarang2",
    "Mia",
    "Crystalia",
    "Ali",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhatsAppAppBar(),

      bottomNavigationBar: const WhatsAppBottomNavigationBar(),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF00A884),
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Column(
          children: [
            const SearchBarWidget(),
        
            const FilterChipsWidget(),
        
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ChatTile(name: names[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WhatsAppAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const WhatsAppAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.white,
      title: const Text(
        "WhatsApp",
        style: TextStyle(
          color: Color(0xFF00A884),
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      actions: const [
        Icon(Icons.camera_alt_outlined),
        SizedBox(width: 17),
        Icon(Icons.more_vert),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class WhatsAppBottomNavigationBar extends StatelessWidget {
  const WhatsAppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF00A884),
      unselectedItemColor: const Color(0xFF54656F),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.update),
          label: "Updates",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline),
          label: "Communities",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: "Calls",
        ),
      ],
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFF0F2F5),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search_outlined,
              color: Color(0xFF8696A0),
            ),
            hintText: "Ask Meta AI or Search",
            hintStyle: const TextStyle(
              color: Color(0xFF8696A0),
              fontSize: 16,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class FilterChipsWidget extends StatelessWidget {
  const FilterChipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            FilterChipContainer(
              text: "All",
              backgroundColor: Color(0xFFD9FDD3),
              textColor: Color(0xFF0A8F3D),
              borderColor: Color(0xFFB7E4B0),
            ),

            SizedBox(width: 8),

            FilterChipContainer(
              text: "Unread",
              number: "9",
            ),

            SizedBox(width: 8),

            FilterChipContainer(
              text: "Favourites",
            ),

            SizedBox(width: 8),

            FilterChipContainer(
              text: "Groups",
              number: "8",
            ),

            SizedBox(width: 8),

            AddChipButton(),
          ],
        ),
      ),
    );
  }
}

class FilterChipContainer extends StatelessWidget {
  final String text;
  final String? number;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const FilterChipContainer({
    super.key,
    required this.text,
    this.number,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black87,
    this.borderColor = const Color(0xFFE0E0E0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),

          if (number != null) ...[
            const SizedBox(width: 4),

            Text(
              number!,
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class AddChipButton extends StatelessWidget {
  const AddChipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFFE0E0E0),
        ),
        color: Colors.white,
      ),
      child: const Icon(
        Icons.add,
        size: 20,
        color: Colors.black87,
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;

  const ChatTile({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),

      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          "assets/images/$name.jpeg",
        ),
      ),

      title: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),

      subtitle: const Text("Hello, how are you?"),

      trailing: const Text("12:00 PM"),
    );
  }
}