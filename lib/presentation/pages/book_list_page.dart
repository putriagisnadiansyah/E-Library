import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class BookListPage extends StatelessWidget {
  final HomeController controller;

  BookListPage(this.controller);

  final List<Map<String, String>> books = [
    {
      'title': 'The Great Gatsby',
      'cover': 'assets/images/book12.jpg',
      'author': 'F. Scott Fitzgerald',
      'year': '1925',
      'code': 'B001',
      'category': 'Fiction',
      'description': 'A novel set in the Roaring Twenties, exploring themes of wealth, love, and social change.',
      'publication': 'Scribner',
    },
    {
      'title': '1984',
      'cover': 'assets/images/book1.png',
      'author': 'George Orwell',
      'year': '1949',
      'code': 'B002',
      'category': 'Fiction',
      'description': 'A dystopian novel about a totalitarian regime that uses surveillance and propaganda to control the populace.',
      'publication': 'Secker & Warburg',
    },
    {
      'title': 'The Catcher in the Rye',
      'cover': 'assets/images/book11.jpeg',
      'author': 'J.D. Salinger',
      'year': '1951',
      'code': 'B003',
      'category': 'Fiction',
      'description': 'A novel about a troubled teenager, Holden Caulfield, navigating his way through adulthood and grappling with feelings of alienation.',
      'publication': 'Little, Brown and Company',
    },
    {
      'title': 'To Kill a Mockingbird',
      'cover': 'assets/images/book19.jpeg', 
      'author': 'Harper Lee',
      'year': '1960',
      'code': 'B004',
      'category': 'Fiction',
      'description': 'A coming-of-age story set in the Deep South during the 1930s, addressing racism and justice through the eyes of a young girl.',
      'publication': 'J.B. Lippincott & Co.',
    },
    {
      'title': 'Dune',
      'cover': 'assets/images/book4.jpg',
      'author': 'Frank Herbert',
      'year': '1965',
      'code': 'B005',
      'category': 'Science Fiction',
      'description': 'A science fiction epic set in a desert world where politics, religion, and ecology intertwine.',
      'publication': 'Chilton Books',
    },
    {
      'title': 'The Hitchhiker\'s Guide to the Galaxy',
      'cover': 'assets/images/book14.jpeg', 
      'author': 'Douglas Adams',
      'year': '1979',
      'code': 'B006',
      'category': 'Science Fiction',
      'description': 'A comedic space adventure about a man who is taken on an intergalactic journey.',
      'publication': 'Pan Books',
    },
    {
      'title': 'Ender\'s Game',
      'cover': 'assets/images/book5.jpeg', 
      'author': 'Orson Scott Card',
      'year': '1985',
      'code': 'B007',
      'category': 'Science Fiction',
      'description': 'A young boy is trained to be a military commander in a futuristic society on the brink of interstellar war.',
      'publication': 'Tor Books',
    },
    {
      'title': 'Neuromancer',
      'cover': 'assets/images/book8.jpg', 
      'author': 'William Gibson',
      'year': '1984',
      'code': 'B008',
      'category': 'Science Fiction',
      'description': 'A cyberpunk novel set in a world of hackers, artificial intelligence, and corporate espionage.',
      'publication': 'Ace Books',
    },
    {
      'title': 'The Hobbit',
      'cover': 'assets/images/book15.jpg',
      'author': 'J.R.R. Tolkien',
      'year': '1937',
      'code': 'B009',
      'category': 'Fantasy',
      'description': 'A young hobbit embarks on a quest with a group of dwarves to reclaim their treasure from a dragon.',
      'publication': 'George Allen & Unwin',
    },
    {
      'title': 'Harry Potter and the Philosopher\'s Stone',
      'cover': 'assets/images/book6.jpg',
      'author': 'J.K. Rowling',
      'year': '1997',
      'code': 'B010',
      'category': 'Fantasy',
      'description': 'A young boy discovers he is a wizard and attends a magical school where he makes friends and enemies.',
      'publication': 'Bloomsbury',
    },
    {
      'title': 'The Name of the Wind',
      'cover': 'assets/images/book16.jpg', 
      'author': 'Patrick Rothfuss',
      'year': '2007',
      'code': 'B011',
      'category': 'Fantasy',
      'description': 'A young man recounts his life story, from his childhood in a traveling troupe to becoming a legendary figure in a magical world.',
      'publication': 'DAW Books',
    },
    {
      'title': 'A Game of Thrones',
      'cover': 'assets/images/book2.jpg', 
      'author': 'George R.R. Martin',
      'year': '1996',
      'code': 'B012',
      'category': 'Fantasy',
      'description': 'A high fantasy epic set in a brutal medieval world where noble families vie for control of the Iron Throne.',
      'publication': 'Bantam Spectra',
    },
    {
      'title': 'Pride and Prejudice',
      'cover': 'assets/images/book10.jpeg',
      'author': 'Jane Austen',
      'year': '1813',
      'code': 'B013',
      'category': 'Romance',
      'description': 'A romantic novel that also critiques the British landed gentry of the 19th century.',
      'publication': 'T. Egerton',
    },
    {
      'title': 'The Notebook',
      'cover': 'assets/images/book17.jpg', 
      'author': 'Nicholas Sparks',
      'year': '1996',
      'code': 'B014',
      'category': 'Romance',
      'description': 'A heartwarming romance between two people from different social classes.',
      'publication': 'Warner Books',
    },
    {
      'title': 'Outlander',
      'cover': 'assets/images/book9.jpeg', 
      'author': 'Diana Gabaldon',
      'year': '1991',
      'code': 'B015',
      'category': 'Romance',
      'description': 'A historical fiction novel blending romance and time travel.',
      'publication': 'Delacorte Press',
    },
    {
      'title': 'Twilight',
      'cover': 'assets/images/book20.jpg', 
      'author': 'Stephenie Meyer',
      'year': '2005',
      'code': 'B016',
      'category': 'Romance',
      'description': 'A love story between a teenage girl and a vampire.',
      'publication': 'Little, Brown and Company',
    },
    {
      'title': 'The Shining',
      'cover': 'assets/images/book18.jpeg',
      'author': 'Stephen King',
      'year': '1977',
      'code': 'B017',
      'category': 'Horror',
      'description': 'A chilling novel about a haunted hotel and the descent into madness.',
      'publication': 'Doubleday',
    },
    {
      'title': 'It',
      'cover': 'assets/images/book7.jpg', 
      'author': 'Stephen King',
      'year': '1986',
      'code': 'B018',
      'category': 'Horror',
      'description': 'A group of friends must confront a terrifying entity that has haunted their hometown for decades.',
      'publication': 'Viking Penguin',
    },
    {
      'title': 'The Haunting of Hill House',
      'cover': 'assets/images/book13.jpeg', 
      'author': 'Shirley Jackson',
      'year': '1959',
      'code': 'B019',
      'category': 'Horror',
      'description': 'A gothic horror novel about a group of people who encounter supernatural phenomena in a haunted house.',
      'publication': 'Houghton Mifflin',
    },
    {
      'title': 'Dracula',
      'cover': 'assets/images/book3.jpg', 
      'author': 'Bram Stoker',
      'year': '1897',
      'code': 'B020',
      'category': 'Horror',
      'description': 'A gothic horror novel about a vampire’s attempt to move from Transylvania to England in order to spread the undead curse.',
      'publication': 'Archibald Constable and Company',
    },
  ];

  @override
  Widget build(BuildContext context) {
    books.sort((a, b) => a['title']!.compareTo(b['title']!));

    return BasePage(
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: const [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('Cover')),
                DataColumn(label: Text('Title')),
                DataColumn(label: Text('Author')),
                DataColumn(label: Text('Year')),
                DataColumn(label: Text('Code')),
                DataColumn(label: Text('Category')),
                DataColumn(label: Text('Description')),
                DataColumn(label: Text('Publication')), 
              ],
              rows: books.asMap().entries.map((entry) {
                int index = entry.key;
                Map<String, String> book = entry.value;
                return DataRow(
                  cells: [
                    DataCell(Text((index + 1).toString())), 
                    DataCell(
                      Image.asset(
                        book['cover']!,
                        width: 50,
                        height: 75,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.broken_image,
                            size: 50,
                            color: Colors.grey,
                          );
                        },
                      ),
                    ),
                    DataCell(Text(book['title']!)),
                    DataCell(Text(book['author']!)),
                    DataCell(Text(book['year']!)),
                    DataCell(Text(book['code']!)),
                    DataCell(Text(book['category']!)),
                    DataCell(
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Text(
                          book['description']!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    DataCell(Text(book['publication']!)),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
      selectedIndex: 1,
      controller: controller,
    );
  }
}
