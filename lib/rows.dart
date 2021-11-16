import 'package:flutter/material.dart';

class rows extends StatelessWidget {
  rows();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // this is for  storis Row
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
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
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
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
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
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
                  'mo9rane macou wlid homa',
                  maxLines: 2, // tehded chehale mn lines ybano max
                  overflow: TextOverflow
                      .ellipsis, // yederlek ... no9te m3a la fon bche tfi9 bli mazale text
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
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
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
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
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
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
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
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
          ),
        ],
      ),
    );
  }
}
