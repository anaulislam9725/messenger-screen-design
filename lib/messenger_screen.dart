import 'dart:math';

import 'package:flutter/material.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  // data.dart
  List<Map<String, String>> people = [
    {
      "name": "Arif Hossain",
      "message":
          "Hey! Will we meet tomorrow? It’s been a long time since we had a proper hangout, so I thought we could catch up a bit.",
      "imageUrl": "https://i.pravatar.cc/150?img=3",
    },
    {
      "name": "Sumaiya Rahman",
      "message":
          "I got the file, thanks! I ran the code you sent me and everything is working perfectly without any issues.",
      "imageUrl": "https://i.pravatar.cc/150?img=5",
    },
    {
      "name": "Naimul Karim",
      "message":
          "I am a little busy today. But tomorrow morning I should be free, so we can discuss it then.",
      "imageUrl": "https://i.pravatar.cc/150?img=8",
    },
    {
      "name": "Rafiul Islam",
      "message":
          "Is 3pm okay for the meeting? I think this time would work best for everyone in the team.",
      "imageUrl": "https://i.pravatar.cc/150?img=11",
    },
    {
      "name": "Farhana Akter",
      "message":
          "I’ve pushed the code. Please take a look and confirm if everything has been merged correctly.",
      "imageUrl": "https://i.pravatar.cc/150?img=14",
    },
    {
      "name": "Tanvir Ahmed",
      "message":
          "The design looks amazing! But if you make a small change, I think it will look even cleaner.",
      "imageUrl": "https://i.pravatar.cc/150?img=17",
    },
    {
      "name": "Nusrat Jahan",
      "message":
          "Are you coming for lunch? A few of us are going to the restaurant and you’re welcome to join us.",
      "imageUrl": "https://i.pravatar.cc/150?img=21",
    },
    {
      "name": "Mahin Hasan",
      "message":
          "Can I give you a quick call? I need to share something important with you before the day ends.",
      "imageUrl": "https://i.pravatar.cc/150?img=28",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4632FF),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Inbox",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.download_for_offline,
                        size: 28,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Icon(Icons.menu, size: 34, color: Colors.white),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Favorite contact",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.14,

                child: ListView.builder(
                  itemCount: people.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "assets/add.png",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Add", style: TextStyle(color: Colors.white)),
                          SizedBox(height: 8),
                        ],
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 65,
                            width: 65,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              border: Border.all(color: Colors.white),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                people[index]["imageUrl"]!,

                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          SizedBox(
                            width: 100,
                            child: Text(
                              people[index]["name"]!,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: ListTile(
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey.shade400,
                              width: 3,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.network(
                              people[index]["imageUrl"]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          people[index]["name"]!,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          people[index]["message"]!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "2.30pm",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                  "${Random().nextInt(10) + 1}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(Icons.add, size: 36, color: Colors.white),
      ),
    );
  }
}
