import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Dalai Lama', text: 'The purpose of our lives is to be happy.'),
    Quote(author: 'Stephen King', text: 'Get busy living or get busy dying.'),
    Quote(author: 'Ernest Hemingway', text: 'In order to write about life first you must live it.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
             quote: quote,
          delete: (){
               setState(() {
                 quotes.remove(quote);
               });
          }
        )).toList(),
    ),
    );
    }
  }

