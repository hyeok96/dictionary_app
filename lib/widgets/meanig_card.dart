import 'package:dictionary_app/model/meaning_model.dart';
import 'package:flutter/material.dart';

class MeaningCard extends StatelessWidget {
  const MeaningCard({
    super.key,
    required this.meaning,
  });
  final MeaningModel meaning;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            meaning.partOfSpeech,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: meaning.definitions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  meaning.definitions[index].definition,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
