import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class CategoryPage extends StatefulWidget {
  final HomeController controller;

  CategoryPage(this.controller);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final Map<String, List<Map<String, String>>> genreBooks = {
    'Fiction': [
      {
        'title': 'The Great Gatsby',
        'cover': 'assets/images/book12.jpg',
        'author': 'F. Scott Fitzgerald',
        'category': 'Fiction',
        'description': 'A novel set in the Roaring Twenties, exploring themes of wealth, love, and social change.',
        'synopsis': 'The Great Gatsby is a story of Jay Gatsby, a millionaire who throws extravagant parties in hopes of rekindling a past romance with Daisy Buchanan. It explores themes of the American Dream and social stratification.',
        'publication': 'Scribner',
      },
      {
        'title': '1984',
        'cover': 'assets/images/book1.png',
        'author': 'George Orwell',
        'category': 'Fiction',
        'description': 'A dystopian novel about a totalitarian regime that uses surveillance and propaganda to control the populace.',
        'synopsis': 'Set in a world of perpetual war and omnipresent government surveillance, 1984 depicts a society where Big Brother, the totalitarian leader, controls every aspect of life. The story follows Winston Smith, a man trying to escape the mind control of the regime.',
        'publication': 'Secker & Warburg',
      },
      {
        'title': 'The Catcher in the Rye',
        'cover': 'assets/images/book11.jpeg',
        'author': 'J.D. Salinger',
        'category': 'Fiction',
        'description': 'A novel about a troubled teenager, Holden Caulfield, navigating his way through adulthood and grappling with feelings of alienation.',
        'synopsis': 'The story follows Holden Caulfield as he is expelled from an elite prep school and wanders New York City, struggling with depression, loss, and the desire to protect innocence.',
        'publication': 'Little, Brown and Company',
      },
      {
        'title': 'To Kill a Mockingbird',
        'cover': 'assets/images/book19.jpeg',
        'author': 'Harper Lee',
        'category': 'Fiction',
        'description': 'A coming-of-age story set in the Deep South during the 1930s, addressing racism and justice through the eyes of a young girl.',
        'synopsis': 'Scout Finch recounts her childhood in Alabama, where her father, lawyer Atticus Finch, defends a black man wrongly accused of raping a white woman. The book explores themes of morality, justice, and racism.',
        'publication': 'J.B. Lippincott & Co.',
      },
    ],
    'Science Fiction': [
      {
        'title': 'Dune',
        'cover': 'assets/images/book4.jpg',
        'author': 'Frank Herbert',
        'category': 'Science Fiction',
        'description': 'A science fiction epic set in a desert world where politics, religion, and ecology intertwine.',
        'synopsis': 'Dune is set on the desert planet Arrakis, the only source of the most valuable substance in the universe: spice. It tells the story of Paul Atreides, whose family is thrust into a complex political struggle over control of Arrakis.',
        'publication': 'Chilton Books',
      },
      {
        'title': 'The Hitchhiker\'s Guide to the Galaxy',
        'cover': 'assets/images/book14.jpeg',
        'author': 'Douglas Adams',
        'category': 'Science Fiction',
        'description': 'A comedic space adventure about a man who is taken on an intergalactic journey.',
        'synopsis': 'When Arthur Dent’s home is destroyed to make way for a hyperspace bypass, he embarks on a cosmic journey through the universe. With his alien companion Ford Prefect, Arthur learns of the absurdities of life, the universe, and everything.',
        'publication': 'Pan Books',
      },
      {
        'title': 'Ender\'s Game',
        'cover': 'assets/images/book5.jpeg',
        'author': 'Orson Scott Card',
        'category': 'Science Fiction',
        'description': 'A young boy is trained to be a military commander in a futuristic society on the brink of interstellar war.',
        'synopsis': 'Ender Wiggin is recruited by the military to lead a fleet in the war against an alien species. Through rigorous training and simulated battles, Ender must confront his own humanity while preparing for the fate of mankind.',
        'publication': 'Tor Books',
      },
      {
        'title': 'Neuromancer',
        'cover': 'assets/images/book8.jpg',
        'author': 'William Gibson',
        'category': 'Science Fiction',
        'description': 'A cyberpunk novel set in a world of hackers, artificial intelligence, and corporate espionage.',
        'synopsis': 'Case, a washed-up hacker, is hired for a job that thrusts him into a world of cyberspace, virtual reality, and a powerful artificial intelligence that may control humanity’s future.',
        'publication': 'Ace Books',
      },
    ],
    'Fantasy': [
      {
        'title': 'The Hobbit',
        'cover': 'assets/images/book15.jpg',
        'author': 'J.R.R. Tolkien',
        'category': 'Fantasy',
        'description': 'A young hobbit embarks on a quest with a group of dwarves to reclaim their treasure from a dragon.',
        'synopsis': 'The Hobbit follows Bilbo Baggins, a hobbit who is swept into an adventure with dwarves to reclaim the Lonely Mountain from the dragon Smaug. Along the way, Bilbo encounters trolls, elves, goblins, and more in this iconic fantasy journey.',
        'publication': 'George Allen & Unwin',
      },
      {
        'title': 'Harry Potter and the Philosopher\'s Stone',
        'cover': 'assets/images/book6.jpg',
        'author': 'J.K. Rowling',
        'category': 'Fantasy',
        'description': 'A young boy discovers he is a wizard and attends a magical school where he makes friends and enemies.',
        'synopsis': 'Harry Potter discovers that he is a wizard on his eleventh birthday and goes on to attend Hogwarts School of Witchcraft and Wizardry. He makes friends and enemies and faces dark forces led by the dark wizard, Lord Voldemort.',
        'publication': 'Bloomsbury',
      },
      {
        'title': 'The Name of the Wind',
        'cover': 'assets/images/book16.jpg',
        'author': 'Patrick Rothfuss',
        'category': 'Fantasy',
        'description': 'A young man recounts his life story, from his childhood in a traveling troupe to becoming a legendary figure in a magical world.',
        'synopsis': 'Kvothe, a gifted young man, tells his life story, filled with magic, music, love, and tragedy. His journey through hardship, discovery, and fame leads him to confront a dark force that threatens the world.',
        'publication': 'DAW Books',
      },
      {
        'title': 'A Game of Thrones',
        'cover': 'assets/images/book2.jpg',
        'author': 'George R.R. Martin',
        'category': 'Fantasy',
        'description': 'A high fantasy epic set in a brutal medieval world where noble families vie for control of the Iron Throne.',
        'synopsis': 'In the Seven Kingdoms of Westeros, noble families engage in a deadly game of politics, power, and war to claim the Iron Throne. Meanwhile, winter approaches and supernatural forces stir beyond the Wall.',
        'publication': 'Bantam Spectra',
      },
    ],
    'Romance': [
      {
        'title': 'Pride and Prejudice',
        'cover': 'assets/images/book10.jpeg',
        'author': 'Jane Austen',
        'category': 'Romance',
        'description': 'A romantic novel that also critiques the British landed gentry of the 19th century.',
        'synopsis': 'Elizabeth Bennet navigates the complex relationships and social expectations of 19th-century England. As she clashes with the proud Mr. Darcy, a romance unfolds that challenges societal norms and class differences.',
        'publication': 'T. Egerton',
      },
      {
        'title': 'The Notebook',
        'cover': 'assets/images/book17.jpg',
        'author': 'Nicholas Sparks',
        'category': 'Romance',
        'description': 'A heartwarming romance between two people from different social classes.',
        'synopsis': 'Noah and Allie’s love story spans decades, from their passionate youth to later years when Noah reads their love letters to Allie, who suffers from Alzheimer’s disease. The book explores the endurance of love through time and hardship.',
        'publication': 'Warner Books',
      },
      {
        'title': 'Outlander',
        'cover': 'assets/images/book9.jpeg',
        'author': 'Diana Gabaldon',
        'category': 'Romance',
        'description': 'A historical fiction novel blending romance and time travel.',
        'synopsis': 'Claire Beauchamp, a WWII nurse, is mysteriously transported back in time to 18th-century Scotland, where she falls in love with a Highland warrior. The story blends romance, history, and adventure.',
        'publication': 'Delacorte Press',
      },
      {
        'title': 'Twilight',
        'cover': 'assets/images/book20.jpg',
        'author': 'Stephenie Meyer',
        'category': 'Romance',
        'description': 'A love story between a teenage girl and a vampire.',
        'synopsis': 'Bella Swan moves to Forks, Washington, where she falls in love with Edward Cullen, a mysterious boy who turns out to be a vampire. Their relationship faces the challenges of their different worlds.',
        'publication': 'Little, Brown and Company',
      },
    ],
    'Horror': [
      {
        'title': 'The Shining',
        'cover': 'assets/images/book18.jpeg',
        'author': 'Stephen King',
        'category': 'Horror',
        'description': 'A chilling novel about a haunted hotel and the descent into madness.',
        'synopsis': 'Jack Torrance takes a job as the winter caretaker of the Overlook Hotel, where he slowly loses his sanity due to the malevolent influence of the hotel’s supernatural forces.',
        'publication': 'Doubleday',
      },
      {
        'title': 'It',
        'cover': 'assets/images/book7.jpg',
        'author': 'Stephen King',
        'category': 'Horror',
        'description': 'A group of friends must confront a terrifying entity that has haunted their hometown for decades.',
        'synopsis': 'In the town of Derry, a group of children must face an ancient, shape-shifting evil that takes the form of a killer clown named Pennywise. They confront their deepest fears to defeat the terror once and for all.',
        'publication': 'Viking Penguin',
      },
      {
        'title': 'The Haunting of Hill House',
        'cover': 'assets/images/book13.jpeg',
        'author': 'Shirley Jackson',
        'category': 'Horror',
        'description': 'A gothic horror novel about a group of people who encounter supernatural phenomena in a haunted house.',
        'synopsis': 'Four people gather at Hill House: Eleanor, who is drawn to the house, and three others who are part of a study of the paranormal. The house seems to have a life of its own and the people are pushed to their limits.',
        'publication': 'Houghton Mifflin',
      },
      {
        'title': 'Dracula',
        'cover': 'assets/images/book3.jpg',
        'author': 'Bram Stoker',
        'category': 'Horror',
        'description': 'A gothic horror novel about a vampire’s attempt to move from Transylvania to England in order to spread the undead curse.',
        'synopsis': 'Count Dracula travels from Transylvania to England to expand his undead dominion. A group of individuals must band together to stop him, culminating in a final confrontation at Dracula’s castle.',
        'publication': 'Archibald Constable and Company',
      },
    ],
  };

  List<Map<String, String>> selectedBooks = [];
  String selectedGenre = ''; 

  void _onGenreSelected(String genre) {
    setState(() {
      selectedGenre = genre;
      selectedBooks = genreBooks[genre] ?? [];
    });
  }

  void _showBookDetails(BuildContext context, Map<String, String> book) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(book['title']!),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(book['cover']!), 
                SizedBox(height: 16),
                Text(
                  'Author: ${book['author']}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Synopsis: ${book['synopsis']}',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Row(
        children: [
          Container(
            width: 200,
            color: Colors.grey[200],
            child: ListView(
              children: genreBooks.keys.map((genre) {
                return ListTile(
                  title: Text(genre),
                  onTap: () => _onGenreSelected(genre),
                  selected: selectedGenre == genre,
                  selectedTileColor: Colors.blueAccent.withOpacity(0.2),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: selectedBooks.isNotEmpty
                  ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: selectedBooks.length,
                      itemBuilder: (context, index) {
                        final book = selectedBooks[index];
                        return GestureDetector(
                          onTap: () => _showBookDetails(context, book),
                          child: Card(
                            elevation: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    book['cover']!,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(
                                        Icons.broken_image,
                                        size: 100,
                                        color: Colors.grey,
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        book['title']!,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        book['author']!,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        'Select a genre to view books',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
            ),
          ),
        ],
      ),
      selectedIndex: 2,
      controller: widget.controller,
    );
  }
}