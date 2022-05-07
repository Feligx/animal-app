import 'package:flutter/material.dart';
import 'package:pawrent/home/home1.dart';

class adpotMatch extends StatefulWidget {
  const adpotMatch({Key? key, required this.filter}) : super(key: key);
  final filter;

  @override
  State<adpotMatch> createState() => _adpotMatchState();
}

class _adpotMatchState extends State<adpotMatch> {
  @override
  Widget build(BuildContext context) {
    print(widget.filter);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Las mascotas perfectas para ti"),
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
      body: Container(
        //color: Colors.grey[200],
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades", style: TextStyle(color: Colors.black)), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(right: 100.0),
                      child: Column(
                        children: [Text("Novedades"), Text("Lorem Ipsum")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Image(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4",
                                scale: 2.5)))
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
