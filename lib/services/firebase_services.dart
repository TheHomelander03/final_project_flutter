import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getFood() async {
  List food = [];
  CollectionReference collectionReferenceFood = db.collection('food');
  
  QuerySnapshot queryFood = await collectionReferenceFood.get();

  queryFood.docs.forEach((documento){
    food.add(documento.data());

  });
await Future.delayed(const Duration(seconds: 3));
  return food;
}