import 'package:Messanger_desin/rows.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0, // yenahi khte les bin Apppbar ou body
        titleSpacing: 12.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16.0,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // hadi ta3 searsh
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[300]),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  // shrinkWrap: true,   manhtadjehach hna nhb ndirha  nhb nn
                  itemCount: 15, // hada chehale fihaliste
                  scrollDirection: Axis.horizontal, // haa dirction ta3 scrol
                  separatorBuilder: (BuildContext context, int index) {
                    // yesipari bin items
                    return SizedBox(
                      width: 15.0,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    //  ybnilek 3anaser fiha contex ye3ref win rak ou index ta3 list
                    return buildStoryItem();
                  },
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              ListView.separated(
                //  hena yelezem nderlha expended bche yetnaha mochekile ta3 la fichage maye3rfch secrole chehale ydi b expanded tefra t9olo di ba9i
                // 3awte nahiteha expanded pesq hbite chacha kale tescroli mmatemchich bexpanded
                itemCount: 14,
                shrinkWrap:
                    true, // hadi ma3netha djib les donni ta3 lista darba wahda list tebuild maa whda
                physics:
                    NeverScrollableScrollPhysics(), // tehbss scrole lelist bche temchi maytela9awch 2 scrole ou fo9 3nedna SinglechildscrolView
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10.0,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return buildChatItem();
                },
              ),

              // SingleChildScrollView(
              //   // this is for  storis Row
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           //  crossAxisAlignment: CrossAxisAlignment.start,

              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'rabah ham',
              //               maxLines: 2, // tehded chehale mn lines ybano max
              //               overflow: TextOverflow
              //                   .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 15.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           //  crossAxisAlignment: CrossAxisAlignment.start,

              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'rabah ham',
              //               maxLines: 2, // tehded chehale mn lines ybano max
              //               overflow: TextOverflow
              //                   .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 15.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           //  crossAxisAlignment: CrossAxisAlignment.start,

              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'mo9rane macou wlid homa',
              //               maxLines: 2, // tehded chehale mn lines ybano max
              //               overflow: TextOverflow
              //                   .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 15.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           //  crossAxisAlignment: CrossAxisAlignment.start,

              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'rabah ham',
              //               maxLines: 2, // tehded chehale mn lines ybano max
              //               overflow: TextOverflow
              //                   .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 15.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           //  crossAxisAlignment: CrossAxisAlignment.start,

              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'rabah ham',
              //               maxLines: 2, // tehded chehale mn lines ybano max
              //               overflow: TextOverflow
              //                   .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 15.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           //  crossAxisAlignment: CrossAxisAlignment.start,

              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'rabah ham',
              //               maxLines: 2, // tehded chehale mn lines ybano max
              //               overflow: TextOverflow
              //                   .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 15.0,
              //       ),
              //       Container(
              //         width: 60.0,
              //         child: Column(
              //           //  crossAxisAlignment: CrossAxisAlignment.start,

              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'rabah ham',
              //               maxLines: 2, // tehded chehale mn lines ybano max
              //               overflow: TextOverflow
              //                   .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines:
              //                         1, // max numbre de line les bano f tex f desin deyalna
              //                     overflow: TextOverflow
              //                         .ellipsis, // bche medelek telte ni9ate hadek tefheme mazale makemlech text
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 1,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         //  rows(),   class les khedmtha ta3  stores
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: AlignmentDirectional.bottomEnd,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 30.0,
              //                   backgroundImage: NetworkImage(
              //                       'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              //                 ),
              //                 CircleAvatar(
              //                   radius: 10.0,
              //                   backgroundColor: Colors.white,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 2.0,
              //                     end: 2.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 8.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               width: 20.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Moh Tegile ',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 5.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                             horizontal: 10.0),
              //                         child: Container(
              //                           width: 4.0,
              //                           height: 4.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.black,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text('19:22 PM'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // 1. build item
  // 2. build list
  // 3. add item to list
  // arrow function
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
              ),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 2.0,
                  end: 2.0,
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moh Tegile ',
                  maxLines:
                      1, // max numbre de line les bano f tex f desin deyalna
                  overflow: TextOverflow
                      .ellipsis, // bche medelek telte ni9ate hadek tefheme mazale makemlech text
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'slt cv saha ftorek les lifou roh trgode rah lehale ghedwa nodou bkeri rak chayf balak matnoudech ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 4.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text('19:22 PM'),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  Widget buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://blog.neocamino.com/wp-content/uploads/2015/02/photo-profil-facebook-portrait.jpg'),
                ),
                CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0,
                  ),
                  child: CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'rabah ham',
              maxLines: 2, // tehded chehale mn lines ybano max
              overflow: TextOverflow
                  .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
            ),
          ],
        ),
      );
}
