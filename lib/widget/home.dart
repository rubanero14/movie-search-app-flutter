import 'package:flutter/material.dart';
import 'package:movie_search/widget/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var movies = [
    {
    "Title": "Harry Potter and the Deathly Hallows: Part 2",
    "Year": "2011",
    "imdbID": "tt1201607",
    "Type": "movie",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMGVmMWNiMDktYjQ0Mi00MWIxLTk0N2UtN2ZlYTdkN2IzNDNlXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_SX300.jpg"
  },
    {
      "Title": "Harry Potter and the Sorcerer's Stone",
      "Year": "2001",
      "imdbID": "tt0241527",
      "Type": "movie",
      "Poster": "https://m.media-amazon.com/images/M/MV5BNjQ3NWNlNmQtMTE5ZS00MDdmLTlkZjUtZTBlM2UxMGFiMTU3XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg"
    },
    {
      "Title": "Harry Potter and the Chamber of Secrets",
      "Year": "2002",
      "imdbID": "tt0295297",
      "Type": "movie",
      "Poster": "https://m.media-amazon.com/images/M/MV5BMTcxODgwMDkxNV5BMl5BanBnXkFtZTYwMDk2MDg3._V1_SX300.jpg"
    },
    {
      "Title": "Harry Potter and the Prisoner of Azkaban",
      "Year": "2004",
      "imdbID": "tt0304141",
      "Type": "movie",
      "Poster": "https://m.media-amazon.com/images/M/MV5BMTY4NTIwODg0N15BMl5BanBnXkFtZTcwOTc0MjEzMw@@._V1_SX300.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(hintText: "Enter movie name..."),)),
                TextButton(onPressed: (){}, child: Text("Search"))
              ],
            ),
            Expanded(
              child: ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: movies.length,
    itemBuilder: (BuildContext context, int index) {
    return ListTile(
              leading: Image.network(movies[index]["Poster"]!),
              title: Text(movies[index]["Title"]!),
              subtitle: Text(movies[index]["Year"]!),
              trailing: Icon(Icons.chevron_right),
              onTap:(){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>DetailPage()));
              },
    );
    },
    ),
            ),
          ],
        ),
      ),
    );
  }
}
