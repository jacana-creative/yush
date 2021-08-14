import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();

  _clearSearch() {
    _searchController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Flexible(
              child: TextField(
                textAlign: TextAlign.center,
                controller: _searchController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(),
                  hintText: 'Search recipes',
                  hintStyle: TextStyle(color: Colors.grey),

                  // suffixIcon: IconButton(
                  //   onPressed: _clearSearch,
                  //   icon: Icon(Icons.clear),
                  // ),
                ),
                onSubmitted: (input) {
                  print('input');
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child:
            Text('Search For Recipes Screen'),

        ),
      ),
    );
  }
}
