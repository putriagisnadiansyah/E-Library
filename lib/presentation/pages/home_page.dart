import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  HomePage(this.controller);

  final List<Map<String, String>> books = [
    {
      'title': 'The Great Gatsby',
      'cover': 'assets/images/book12.jpg',  
      'author': 'F. Scott Fitzgerald',
      'year': '1925',
      'code': 'B001',
      'category': 'Fiction',
      'description': 'A novel set in the Roaring Twenties, exploring themes of wealth, love, and social change.',
      'synopsis': 'Nick Carraway, the narrator, is drawn into the world of Jay Gatsby and the Jazz Age, with its excess and tragedy.',
      'publication': 'Scribner'
    },
    {
      'title': '1984',
      'cover': 'assets/images/book1.png', 
      'author': 'George Orwell',
      'year': '1949',
      'code': 'B002',
      'category': 'Fiction',
      'description': 'A dystopian novel about a totalitarian regime that uses surveillance and propaganda to control the populace.',
      'synopsis': 'Winston Smith struggles against the Party, led by Big Brother, in a world of constant surveillance and mind control.',
      'publication': 'Secker & Warburg'
    },
    {
      'title': 'Dune',
      'cover': 'assets/images/book4.jpg',  
      'author': 'Frank Herbert',
      'year': '1965',
      'code': 'B003',
      'category': 'Science Fiction',
      'description': 'A science fiction epic set in a desert world where politics, religion, and ecology intertwine.',
      'synopsis': 'Paul Atreides must navigate political intrigue and battles on the desert planet of Arrakis, the source of the universe’s most valuable resource.',
      'publication': 'Chilton Books'
    },
    {
      'title': 'The Hobbit',
      'cover': 'assets/images/book15.jpg',  
      'author': 'J.R.R. Tolkien',
      'year': '1937',
      'code': 'B005',
      'category': 'Fantasy',
      'description': 'A young hobbit embarks on a quest with a group of dwarves to reclaim their treasure from a dragon.',
      'synopsis': 'Bilbo Baggins joins a group of dwarves on an epic journey to reclaim their treasure, encountering trolls, goblins, and dragons along the way.',
      'publication': 'George Allen & Unwin'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Recommendations',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7, 
                ),
                itemCount: books.length, 
                itemBuilder: (context, index) {
                  final book = books[index];
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(book['title']!),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Author: ${book['author']}'),
                                  Text('Year: ${book['year']}'),
                                  SizedBox(height: 10),
                                  Text('Description:'),
                                  Text(book['description']!),
                                  SizedBox(height: 10),
                                  Text('Synopsis:'),
                                  Text(book['synopsis']!),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      elevation: 4,
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              book['cover']!, 
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              book['title']!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
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
      selectedIndex: 0,
      controller: controller,
    );
  }
}
