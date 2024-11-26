import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Recipe"),
      ),
      body: Column(
        children:  [
          TextField(
            decoration: InputDecoration(
              hintText: 'Add the new recipe'
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Save"))
        ],
      )
    );
  }
}