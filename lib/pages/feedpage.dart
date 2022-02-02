import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger/inc/app_theme.dart';
import 'package:messenger/widgets/story_wg.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 20),
                    StoryWG(
                        name: 'Emeline', imgsrc: 'assets/images/emeline.jpg'),
                    StoryWG(name: 'Selma', imgsrc: 'assets/images/selma.jpg'),
                    StoryWG(name: 'Sonia', imgsrc: 'assets/images/sonia.jpg'),
                    StoryWG(name: 'Jean', imgsrc: 'assets/images/jean.jpg'),
                    StoryWG(name: 'Emily', imgsrc: 'assets/images/emily.jpg'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 10, 0, 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/sonia.jpg'),
                                radius: 20,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Samia",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: AppTheme.textColor),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "@samia",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: AppTheme.textColor),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 0, 20, 10),
                          child: Text(
                            "Roses are Red Violets are Blue, when I feel so bored I start thinking about you... 😘",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: AppTheme.textColor),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 0, 20, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              width: double.infinity,
                              height: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/feed1.jpg"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
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
                                    "204 loves this",
                                    style: GoogleFonts.poppins(
                                      textStyle:
                                          TextStyle(color: Colors.pinkAccent),
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
                                      textStyle:
                                          TextStyle(color: Colors.black54),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
