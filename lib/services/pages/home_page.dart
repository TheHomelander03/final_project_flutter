import 'package:final_proyect/services/firebase_services.dart';
import 'package:flutter/material.dart';


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
      }
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
        ),
    );
  }
}
