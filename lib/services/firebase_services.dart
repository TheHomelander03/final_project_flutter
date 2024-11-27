import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getFood() async {
  List food = [];
  //CollectionReference collectionReferenceFood = db.collection('food');
  QuerySnapshot queryFood = await db.collection('food').get();
  for (var doc in queryFood.docs){
    food.add(doc.data());
  }

  return food;
}
//Save recipe for the data base
Future<void> addRecipe(String recipe) async {
  await db.collection("food").add({"recipe": recipe});
}