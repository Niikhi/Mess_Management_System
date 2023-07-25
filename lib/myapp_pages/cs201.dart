import 'package:androidstudio_projects/myapp_pages/phone.dart';
import 'package:androidstudio_projects/myapp_pages/initialscreen.dart';
import 'package:flutter/material.dart';
import 'package:androidstudio_projects/myapp_pages/menu.dart';
import 'package:androidstudio_projects/myapp_pages/help.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:androidstudio_projects/myapp_pages/example_polls.dart';
import 'package:androidstudio_projects/myapp_pages/message.dart';
import 'package:androidstudio_projects/myapp_pages/payment.dart';
// import 'package:firebase_core/firebase_core.dart';


 Future<void> main () async {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(
  MaterialApp(
    home: SplashScreen(

    ),
    debugShowCheckedModeBanner: false,
  )
  );
}

  class Cs2 extends StatefulWidget {
  const Cs2({Key? key}) : super(key: key);
  @override
  State<Cs2> createState() => _Cs2State();
  }

  class _Cs2State extends State<Cs2> {

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      backgroundColor: Colors. blueGrey[900],
           appBar: AppBar(
            elevation: 0.0,
           title:Center(
               child:Text('IIIT V MESS')),
             backgroundColor: Colors.blueGrey[600],

             actions: [
               IconButton( color: Colors.black,
                   icon: Icon( Icons.account_box_rounded),
                   onPressed:(){

                   }
               ),
             ],
           ),
        drawer: Drawer(elevation: 0.0,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          child:ListView(
            // scrollDirection: Axis.vertical,
            physics:AlwaysScrollableScrollPhysics(),
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0.0),
            child: Container(
              padding: EdgeInsets.all(0.0),
            color: Colors.blueGrey,
              child:Column(
                children: [
                  Text('Hey Foodies!!',
                    style:TextStyle(fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
                  Center( child:
                      Container(
                         //  decoration: BoxDecoration(
                         // shape: BoxShape.circle,
                         //  ),
                         width: 120,
                          height: 100,
                          child:ClipRRect(
                        borderRadius:BorderRadius.circular(20),
                        child:Image.asset
                          ('images/hey.jpeg',
                          fit: BoxFit.cover,
                        ),
                      )
                  )
                  )
                ],
              ) ,)
        ),
          ListTile( onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));},
            title:Text('Menu',
              style:TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white) ,) ,
            tileColor: Colors.blueGrey,
            leading: Icon(Icons.menu_book_outlined,color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1.0)),),
          SizedBox(height: 8.0,),
          ListTile(onTap:(){

          },
            title:Text('Community',
              style:TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white) ,) ,
            tileColor: Colors.blueGrey,
            leading: Icon(Icons.people_alt,color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.0)),),
          SizedBox(height: 8.0,),

          ListTile(onTap:(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>help()));
          },
            title:Text('Help and Support ',
              style:TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white) ,) ,
            tileColor: Colors.blueGrey,
            leading: Icon(Icons.help,color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.0)),),
          SizedBox(height: 8.0,),
          ListTile(title:Text('Feedback',style:TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white) ,) ,
            tileColor: Colors.blueGrey,
            leading: Icon(Icons.privacy_tip,color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.0)),),
          SizedBox(height: 8.0,),
          ListTile(
            onTap:(){} ,title:Text('Settings ',style:TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white) ,) ,
            tileColor: Colors.blueGrey,
            leading: Icon(Icons.settings,color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.0)),),
          SizedBox(height: 8.0,),
          ListTile(title:Text('Logout ',style:TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white) ,) ,
            tileColor: Colors.blueGrey,
            leading: Icon(Icons.logout,color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.0)),)
        ],

          )
                     ),

        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
          Container(
         margin: EdgeInsets.symmetric(vertical:9.0 ,horizontal:6.0 ),
          height:160,
          width: 700,
          decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius:BorderRadius.circular(10.0) ),
          child:CarouselSlider(
            options: CarouselOptions(height: 400.0,
                    autoPlay: true,
                    reverse: true,
                    initialPage: 4,
                    enlargeCenterPage: false,
                    pauseAutoPlayOnTouch: true,
              enableInfiniteScroll: false,
              ),
            items: [
                       'images/banana.jpeg',
                       'images/boiledegg.jpeg',
                       'images/breadbutter.jpeg',
                       'images/breadpatties.jpeg',
              'images/dhokla.jpeg',
              'images/dosa.jpeg',
              'images/halffry.jpeg',
              'images/idli.jpeg',
              'images/munchuriya.jpeg',
              'images/parata.jpeg',
              'images/poha.jpeg',
              'images/piliroti.jpeg',
              'images/samosa.jpeg',
              'images/upma.jpeg',
              'images/utapam.jpeg',
              'images/kachori.jpeg', ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(10.0) ,
                          color: Colors.blueGrey
                      ),
                 child:Image.asset(i,) ,
                  );
                },
              );
            }).toList(),
          ) ,
          ),
            Container(
              margin: EdgeInsets.symmetric(vertical:9.0 ,horizontal:6.0 ),
              height:150,
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius:BorderRadius.circular(10.0) ),
              child:CarouselSlider(
                options: CarouselOptions(height: 400.0,
                  autoPlay: true,
                  reverse: true,
                  initialPage: 1,
                  enlargeCenterPage: false,
                  pauseAutoPlayOnTouch: true,
                  enableInfiniteScroll: false,
                ),
                items: ['images/aloo.jpeg',
                  'images/banana.jpeg',
                  'images/chiken.jpeg',

                  'images/daal.jpeg',
                  'images/rice.jpeg',
                  'images/roti.jpeg',
                  'images/curd.jpeg',
                  'images/india.jpeg',
                  'images/images.jpeg',


                  'images/cabbage.jpeg',

                  ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(10.0) ,
                            color: Colors.blueGrey
                        ),
                        child:Image.asset(i) ,
                      );
                    },
                  );
                }).toList(),
              ) ,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical:9.0 ,horizontal:6.0 ),
              height:150,
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius:BorderRadius.circular(10.0) ),
              child:CarouselSlider(
                options: CarouselOptions(height: 400.0,
                  autoPlay: true,
                  reverse: true,
                  initialPage: 6,
                  enlargeCenterPage: false,
                  pauseAutoPlayOnTouch: true,
                  enableInfiniteScroll: false,
                ),
                items: [
                  'images/cabbage.jpeg',

                  'images/daal.jpeg',
                  'images/rice.jpeg',
                  'images/roti.jpeg',
                  'images/aloo.jpeg',
                  'images/curd.jpeg',
                 'images/india.jpeg',
                  'images/images.jpeg',

                  ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(10.0) ,
                            color: Colors.blueGrey
                        ),
                        child:Image.asset(i,) ,
                      );
                    },
                  );
                }).toList(),
              ) ,
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
              height: 100,
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[600],
                  borderRadius:BorderRadius.circular(10.0) ),
          child:Center(
            child: ElevatedButton(
              child: const Text('poll',
              style:TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[400],
                foregroundColor: Colors.black ,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(250,50)
              ),
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>ExamplePolls() ));
              },
            ),
          ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[600],
                  borderRadius:BorderRadius.circular(10.0) ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 100,
                    width: 80,
                    margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius:BorderRadius.circular(10.0) ),
                  child:Column(
                    children: [
                      IconButton(onPressed:(){} ,icon:Icon(Icons.terminal_outlined) ),
                      Center(child: Text(' Statistics',
                          style:TextStyle(fontSize:15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black) )
                      )
                    ],
                  ) ,
                  ),
                  Container(height: 100,
                    width: 80,
                    margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius:BorderRadius.circular(10.0) ),
                    child:Column(
                      children: [
                        IconButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>phone()));
                        } ,icon:Icon(Icons.call) ,),
                         Center( child:Text('In-order ',style:TextStyle(fontSize:15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black) )
                         )  ],
                    ),),
                  Container(height: 100,
                    width: 80,
                    margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius:BorderRadius.circular(10.0) ),
                    child:Column(
                      children: [
                        IconButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
                        } ,icon:Icon(Icons.qr_code_scanner_sharp) ,),
                        Text('QR',style:TextStyle(fontSize:15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black) )
                      ],
                    ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[600],
                  borderRadius:BorderRadius.circular(10.0) ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400] ,
                      foregroundColor: Colors.black  ,
                    ),
                    child: const Text('Feedback',
                        style:TextStyle(fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                    onPressed: () {
                      showDialog(
                          context: context, builder:
                          (context) => const FeedbackDialog());
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Complaints',
                        style:TextStyle(fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400] ,
                      foregroundColor: Colors.black ,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context, builder:
                          (context) => const FeedbackDialog());
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Notice',
                        style:TextStyle(fontSize: 20.0,
                        fontWeight: FontWeight.bold)
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400] ,
                      foregroundColor: Colors.black  ,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context, builder:
                          (context) => const FeedbackDialog());
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              height: 80,
              width: 700,
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius:BorderRadius.circular(80.0) ),
              child: ElevatedButton(
                  child: const Text('Share today`s servings here',
    style:TextStyle(fontSize: 25.0,
    fontWeight: FontWeight.bold)
                  ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[600] ,
                  foregroundColor: Colors.grey[400] ,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0))
                ),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>message()));
                  },
                ),
              ),
            SizedBox(height: 20,)
          ],
          ),

        );
  }
}
 //**** feedback function****
class FeedbackDialog extends StatefulWidget {
  const FeedbackDialog({Key? key}) : super(key: key);

  @override
  State<FeedbackDialog> createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Enter here',
            filled: true,
          ),
          maxLines: 5,
          maxLength: 4096,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'Please enter a value';
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('Send'),
          onPressed: () async {
          //  if(_formKey.currentState!.validate()){
          //    String message;
          //    try{
          //      final collection =FirebaseFirestore.instance.collection('feedback');
          //
          //      await collection.doc().set({
          //        "timestamp"
          //         FieldValue.serverTimestamp();
          //        "feedback" _controller.text,
          //      })
          //    }
          //    catch(_){
          //      message='Error in sending feedback';
          //    }
          //  }
          },
        )
      ],
    );
  }
}
////


