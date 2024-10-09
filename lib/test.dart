import 'package:flutter/material.dart';

class SwipeableList extends StatefulWidget {
  @override
  _SwipeableListState createState() => _SwipeableListState();
}

class _SwipeableListState extends State<SwipeableList> {
  List<Person> persons = [
    Person(name: "John Doe", state: "California", city: "Los Angeles", imageURL: "https://via.placeholder.com/150"),
    Person(name: "Jane Smith", state: "New York", city: "New York City", imageURL: "https://via.placeholder.com/150"),
    // Add more persons here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipeable List'),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          final person = persons[index];

          return Dismissible(
            key: ValueKey(person.name),
            background: Container(color: Colors.red),
            confirmDismiss: (direction) async {
              return await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Are you sure?'),
                    content: Text('Do you want to delete ${person.name}?'),
                    actions: [
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                      ),
                      TextButton(
                        child: Text('Delete'),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                      ),
                    ],
                  );
                },
              );
            },
            onDismissed: (direction) {
              setState(() {
                persons.removeAt(index); // Delete the person
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${person.name} deleted')),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(48),
                  child: Image.network(person.imageURL),
                ),
                title: Text(
                  person.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  '${person.state}, ${person.city}',
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// A model for the person object
class Person {
  final String name;
  final String state;
  final String city;
  final String imageURL;

  Person({
    required this.name,
    required this.state,
    required this.city,
    required this.imageURL,
  });
}
