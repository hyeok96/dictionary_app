import 'package:dictionary_app/model/dictionary_model.dart';
import 'package:dictionary_app/widgets/meanig_card.dart';
import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  const WordCard({
    super.key,
    required this.dict,
  });
  final DictionaryModel dict;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                dict.word,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dict.meanings.length,
                itemBuilder: (context, index) {
                  return MeaningCard(meaning: dict.meanings[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
