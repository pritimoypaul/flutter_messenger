import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger/inc/app_theme.dart';
import 'package:messenger/widgets/story_wg.dart';
import 'package:messenger/widgets/post_container.dart';

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
                  PostContainer(
                    name: "Samia",
                    username: "@samia",
                    imgSrc: 'assets/images/sonia.jpg',
                    text:
                        "Roses are Red Violets are Blue, when I feel so bored I start thinking about you... 😘",
                    photo: 'https://source.unsplash.com/random',
                    likes: "204",
                  ),
                  PostContainer(
                    name: "Emeline",
                    username: "@emeline",
                    imgSrc: 'assets/images/emeline.jpg',
                    text:
                        "Went to neighbour yesterday.. found a cute pup and a lantern to see him.",
                    likes: "127",
                  ),
                  PostContainer(
                    name: "Jean",
                    username: "@jeanB",
                    imgSrc: 'assets/images/jean.jpg',
                    text: "Just Chill !!",
                    photo: 'https://source.unsplash.com/random',
                    likes: "400",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
