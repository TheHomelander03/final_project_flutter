import 'package:flutter/material.dart';

// Firebase imports
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//services
import 'package:final_proyect/services/firebase_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Final App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materia App Bar'),
      ),
      body: FutureBuilder(
        future: getFood(), 
        builder: ((context, snapshot){
          if (snapshot.hasData){
            return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index){
              return Text(snapshot.data?[index]['recipe']);
            },
          );
        }else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      })),
    );
  }
}
