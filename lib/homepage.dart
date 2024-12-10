import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/profile_1.jpg",
    "images/profile_2.jpg",
    "images/profile_3.jpg",
    "images/profile_4.jpg",
    "images/profile_5.jpg",
    "images/profile_6.jpg",
    "images/profile_7.jpg",
    "images/profile_8.jpg",
    "images/profile_9.jpg",
    "images/profile_10.jpg",
  ];

  List<String> posts = [
    "images/post_1.jpg",
    "images/post_2.jpg",
    "images/post_3.jpg",
    "images/post_4.jpg",
    "images/post_5.jpg",
    "images/post_6.jpg",
    "images/post_7.jpg",
    "images/post_8.jpg",
    "images/post_9.jpg",
    "images/post_10.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/insta_title.png",
          height: 75,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    10,
                    (index) => Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: const AssetImage(
                                "images/story.png",
                              ),
                              child: CircleAvatar(
                                radius: 32,
                                backgroundImage: AssetImage(
                                  profileImages[index],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Profile Name",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black87),
                            )
                          ],
                        )),
                  ),
                ),
              ),
              const Divider(),
              Column(
                children: List.generate(
                  10,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //HEADER
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: const AssetImage(
                                "images/story.png",
                              ),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  profileImages[index],
                                ),
                              ),
                            ),
                          ),
                          const Text("Profile Name"),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                          )
                        ],
                      ),
                      Image.asset(posts[index]),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border),
                          ),
                          RichText(
                            text: const TextSpan(text: "21.3K"),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chat_bubble_outline)),
                          RichText(
                            text: const TextSpan(text: "5.9K"),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.label_outline)),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_outline)),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: const TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                  TextSpan(text: "Liked by"),
                                  TextSpan(
                                      text: " Profile Name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(text: " and"),
                                  TextSpan(
                                      text: " others",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                ])),
                            RichText(
                              text: const TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "Profile Name",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text:
                                            " This is the most amazing picture that i post on instagram, Please Like and Comment!!!"),
                                  ]),
                            ),
                            const Text(
                              "view all comments",
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
