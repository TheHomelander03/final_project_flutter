import 'package:final_proyect/services/firebase_services.dart';
import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {

  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Recipe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children:  [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Add the new recipe'
              ),
            ),
            ElevatedButton(onPressed: () async {
              await addRecipe(nameController.text).then((_){
                Navigator.pop(context);
              });
            }, 
            child: const Text("Save"))
          ],
        ),
      )
    );
  }
}