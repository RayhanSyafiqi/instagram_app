import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttons = [
      "Reels",
      "Travels",
      "Music",
      "Food",
      "Art",
      "Coffee",
      "Sport",
      "Race",
      "Beauty",
      "Science",
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                contentPadding: const EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: const Color.fromRGBO(220, 220, 220, 1),
                filled: true,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.person_add),
                onPressed: () {},
              )
            ],
          ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    10,
                    (index) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: OutlinedButton(
                              onPressed: () {}, child: Text(buttons[index])),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
