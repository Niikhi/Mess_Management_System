import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:blackcoffer(),
    debugShowCheckedModeBanner: false,
  )
  );
}
class blackcoffer extends StatefulWidget {
  const blackcoffer({Key? key}) : super(key: key);

  @override
  State<blackcoffer> createState() => _blackcofferState();
}

class _blackcofferState extends State<blackcoffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white70,
        actions: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [ Container(
                  padding: EdgeInsetsDirectional.all(20.0),
                  child: Text("Flyin",
                style: TextStyle( color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                  )
              ),
            Container(child: Icon(Icons.notifications,color: Colors.black,),
              padding: EdgeInsetsDirectional.all(20.0),
            )
              ],
                )
        ],
      ),
      body: Center()
    );
  }
}
