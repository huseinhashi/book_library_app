import 'package:flutter/material.dart';

class Filtersection extends StatefulWidget {
  const Filtersection({Key? key}) : super(key: key);

  @override
  _FilterSectionState createState() => _FilterSectionState();
}

class _FilterSectionState extends State<Filtersection> {
  final List<String> filterOptions = [
    'romance',
    'history',
    'business',
    'comics',
    'cooking',
    'health',
    'philosophy',
    'religion',
    'selfHelp',
    'technology',
  ];
  String? selectedFilter;

  @override
  void initState() {
    super.initState();
    filterByCategory("Discover");
  }

  Future<void> filterByCategory(String category) async {
    setState(() {
      selectedFilter = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: filterOptions.map((filter) {
          return Padding(
            padding: const EdgeInsets.only(right: 11, left: 11),
            child: GestureDetector(
              onTap: () {
                filterByCategory(filter);
              },
              child: Text(
                filter,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: selectedFilter == filter
                      ? Colors
                          .black // Apply different style for selected filter
                      : Colors.grey[400],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
