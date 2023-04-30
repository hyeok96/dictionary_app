import 'package:dictionary_app/model/dictionary_model.dart';
import 'package:dictionary_app/widgets/word_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  DictionaryModel? dict;
  Dio dio = Dio();

  searchWord(String word) async {
    String url = "https://api.dictionaryapi.dev/api/v2/entries/en/$word";
    try {
      var res = await dio.get(url);
      dict = DictionaryModel.fromMap(res.data[0]);
      setState(() {});
    } catch (e) {
      dict = null;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary App'),
        elevation: 0,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      onSubmitted: (value) {
                        searchWord(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            if (dict != null)
              Expanded(
                child: WordCard(dict: dict!),
              )
          ],
        ),
      ),
    );
  }
}
