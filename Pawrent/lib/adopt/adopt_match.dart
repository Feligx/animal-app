import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pawrent/home/home1.dart';

class adpotMatch extends StatefulWidget {
  const adpotMatch({Key? key, required this.filter}) : super(key: key);
  final filter;

  @override
  State<adpotMatch> createState() => _adpotMatchState();
}

class _adpotMatchState extends State<adpotMatch> {

  var Data = [];
  var _isQueried = false;

  Future getMatchData() async{
    Data = [];
    var response = await FirebaseFirestore.instance.collection('animals')
        .where('species', isEqualTo: widget.filter['species'])
        .where('group_of_age', isEqualTo: widget.filter['age'])
        .where('fur', isEqualTo: widget.filter['coat'])
        .where('dogs', isEqualTo: widget.filter['dogs'])
        .where('cats', isEqualTo: widget.filter['cats'])
        .where('children', isEqualTo: widget.filter['children'])
        .where('gender', isEqualTo: widget.filter['gender'])
        .where('size', isEqualTo: widget.filter['size'])
        .get()
        .then((value) => setState((){
          value.docs.forEach((doc) {
            Data.add(doc.data());
          }
        );
        _isQueried=true;
    })).onError((error, stackTrace) => print(error));
  }


  @override
  Widget build(BuildContext context) {
    if(!_isQueried)getMatchData();
    print("Data");
    print(Data);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Las mascotas perfectas para ti"),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_outlined,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        //color: Colors.grey[200],
        child: ListView.builder(
            itemCount: Data.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text(Data[index]['name'])],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  Data[index]['img'],
                                  scale: 2.5)))
                    ],
                  ),
                ),
              );
            }
        )
        ),
      );
  }
}