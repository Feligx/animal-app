import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LatestList extends StatefulWidget {
  const LatestList({Key? key}) : super(key: key);

  @override
  State<LatestList> createState() => _LatestListState();
}

class _LatestListState extends State<LatestList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latest'),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_outlined,
            //color: Colors.black,
            size: 30,
          ),
          onPressed: () {
              Navigator.pop(context);
            },
        ),
      ),
      body: ListItems(),
    );
  }
}



class ListItems extends StatefulWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {

  bool _queried = false;
  List<Widget> posts = [];

  Future getData() async {
    if (!_queried) {
      posts= [];
      var firestore = FirebaseFirestore.instance;
      final data = await firestore.collection("foundations").get();
      for (final doc in data.docs) {
        posts.add(
          Text("hola"),
        );
      }
      setState(() {
        _queried = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
     getData();
    print(_queried);
    return ListView(
      children: posts,
    );
  }
}
