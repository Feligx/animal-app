import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pagnov extends StatefulWidget {
  pagnov({Key? key}) : super(key: key);

  @override
  State<pagnov> createState() => _pagnovState();
}

class _pagnovState extends State<pagnov> {
  @override

  var Data = [];
  var _isQueried = false;

  Future getPosts() async {
    Data = [];
    FirebaseFirestore.instance
        .collection('posts')
        .orderBy('Time_of_upload')
        .limitToLast(5)
        .get().then((value) =>
    {
      setState((){
        value.docs.forEach((doc) {
          Data.add(doc.data());
        });
      })
    });
    _isQueried=true;
  }

  Widget build(BuildContext context) {
    if(!_isQueried)getPosts();
    if(_isQueried && Data.isNotEmpty){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Novedades"),
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => post_expand(title: Data[index]['title'], desc: Data[index]['description'], img: Data[index]['img'],)),);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(Data[index]['title'],
                                    style: TextStyle(color: Colors.black)),
                              ],
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
                  ),
                );
              },
            )
        ),
      );
    }else{
      return const Scaffold(body:Center(child: CircularProgressIndicator()));
    }
  }
}

//Esta va dentro del ONTAP de cada card
//como le paso la foto de perfil?
class post_expand extends StatelessWidget {
  const post_expand({Key? key, required this.img, required this.desc, required this.title}) : super(key: key);

  final String img;
  final String desc;
  final String title;

  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: [
          Container(
            width:100,
            height:150,
            //child: Icon(Icons.location_pin, size: 25, color: Color(0xFF29AB67)),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom:20, left: 20),
            child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ,),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(desc),
          )
        ],
      ),
    );
  }
}
