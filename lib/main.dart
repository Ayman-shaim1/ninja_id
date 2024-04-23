import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          "Ninja ID Card",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel++;
          });
        },
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor:Colors.grey[800]
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: CircleAvatar(backgroundImage: AssetImage("assets/thumb.jpg"),radius: 40.0,)),

            Divider(
             height: 60.0,
             color: Colors.grey[800],
           ),
            Text("NAME",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(
              height: 10.0,
            ),
            Text("Chun-li",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Text("CURRENT NINJA LEVEL",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(
              height: 10.0,
            ),
            Text('$ninjalevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "chun.li@thenetninja.co.uk",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
