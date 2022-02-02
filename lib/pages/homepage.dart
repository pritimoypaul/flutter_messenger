import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger/inc/app_theme.dart';
import 'package:messenger/widgets/message_card.dart';
import 'package:messenger/widgets/message_card_w_notify.dart';
import 'package:messenger/widgets/story_wg.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFEBEBEB),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xFFA9A8AC),
                          size: 15,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: TextFormField(
                              controller: textController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: GoogleFonts.poppins(
                                  textStyle:
                                      TextStyle(color: Color(0xFFA9A8AC)),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(color: Color(0xFFA9A8AC)),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                    child: Text(
                      'Activities',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: AppTheme.textColor),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      StoryWG(
                          name: 'Emeline', imgsrc: 'assets/images/emeline.jpg'),
                      StoryWG(name: 'Selma', imgsrc: 'assets/images/selma.jpg'),
                      StoryWG(name: 'Sonia', imgsrc: 'assets/images/sonia.jpg'),
                      StoryWG(name: 'Jean', imgsrc: 'assets/images/jean.jpg'),
                      StoryWG(name: 'Emily', imgsrc: 'assets/images/emily.jpg'),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Messages',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: AppTheme.textColor),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                MessageCardwNotify(
                  name: 'Selma',
                  imgsrc: 'assets/images/selma.jpg',
                  msg:
                      'We are on the runways at the military hanger, there is a plane in it.',
                  msgtime: '23 min',
                  notifications: '3',
                ),
                MessageCard(
                  name: 'Jean',
                  imgsrc: 'assets/images/jean.jpg',
                  msg: 'I recieved my new watch that i ordered from amazon.',
                  msgtime: '33 min',
                ),
                MessageCard(
                  name: 'Sonia',
                  imgsrc: 'assets/images/sonia.jpg',
                  msg:
                      'I just arrived in the front of the school, i am waiting.. hurry ip!!',
                  msgtime: '43 min',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
