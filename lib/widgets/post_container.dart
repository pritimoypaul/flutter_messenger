import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger/inc/app_theme.dart';

class PostContainer extends StatelessWidget {
  final name;
  final username;
  final imgSrc;
  final text;
  final photo;
  final likes;
  const PostContainer({
    this.name,
    this.username,
    this.imgSrc,
    this.text,
    this.photo,
    this.likes,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imgSrc),
                  radius: 20,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: AppTheme.textColor),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          username,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: AppTheme.textColor),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                  iconSize: 15,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: AppTheme.textColor),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          photo == null
              ? SizedBox(height: 1)
              : Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(photo),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    Text(
                      likes + " loves this",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.pinkAccent),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chat_bubble_outline_rounded,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "Comment",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.black54),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
