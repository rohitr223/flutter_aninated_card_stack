import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
// imports
import 'package:swipeable_animated_cards/components/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // creating a List of Card Widgets
  final List<Widget> cardItems = const [
    Cards(
      image: 'assets/images/demo.jpg',
      name: 'Ariana Grande',
      profession: 'Singer / Song Writer',
    ),
    Cards(
      image: 'assets/images/demo.jpg',
      name: 'Billie Eilish',
      profession: 'Singer / Song Writer',
    ),
    Cards(
      image: 'assets/images/demo.jpg',
      name: 'Justin Bieber',
      profession: 'Singer / Song Writer',
    ),
    Cards(
      image: 'assets/images/demo.jpg',
      name: 'Taylor Swift',
      profession: 'Singer / Song Writer',
    ),
    Cards(
      image: 'assets/images/demo.jpg',
      name: 'Miley Cyrus',
      profession: 'Singer / Song Writer',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.black,
                Colors.blue,
                Colors.deepOrange,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: StackedCardCarousel(
                    items: cardItems,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
