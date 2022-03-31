import 'package:flutter/material.dart';
import 'package:pawrent/register.dart';

class accType extends StatelessWidget {
  const accType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.white,
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
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Column(
                children:[
                  Container(
                    height: queryData.size.height * 0.1,
                    child: Image.asset((isDark) ? 'assets/logo_dark.png' : 'assets/logo_light.png',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text("Elige tu tipo de cuenta", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                  ),
                ]
              ),
              Container(
                width: queryData.size.width,
                height: queryData.size.height/2,
                //margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 40, left: 20.0),
                      child:Card(
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: InkWell(
                              splashColor: Color(0x11c0aed8),
                              onTap: () {
                                debugPrint('Card tapped.');
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => register(accType: "user",)));
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Container(
                                      width:200,
                                      height:200,
                                      child: Icon(Icons.person, size: 100, color: Color(0xFF4a148c)),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFFc0aed8)),
                                    ),//Container
                                    Container(
                                      margin: EdgeInsets.only(top: 20.0),
                                      child: Text("Usuario Normal", textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0),),
                                    ),
                                  ]
                              )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      child:Card(
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: InkWell(
                              splashColor: Color(0x11c0aed8),
                              onTap: () {
                                debugPrint('Card tapped.');
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => register(accType: "found",)));
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Container(
                                      width:200,
                                      height:200,
                                      child: Icon(Icons.volunteer_activism, size: 100, color: Color(0xFF4a148c)),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFFc0aed8)),
                                    ),//Container
                                    Container(
                                      margin: EdgeInsets.only(top: 20.0),
                                      child: Text("Usuario aNormal", textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0),),
                                    ),
                                  ]
                              )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      child:Card(
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: InkWell(
                              splashColor: Color(0x11c0aed8),
                              onTap: () {
                                debugPrint('Card tapped.');
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => register(accType: "vet",)));
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Container(
                                      width:200,
                                      height:200,
                                      child: Icon(Icons.medication, size: 100, color: Color(0xFF4a148c)),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFFc0aed8)),
                                    ),//Container
                                    Container(
                                      margin: EdgeInsets.only(top: 20.0),
                                      child: Text("Veterinario/a", textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0),),
                                    ),
                                  ]
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )

            ]
        ),
      ),
    );
  }
}
