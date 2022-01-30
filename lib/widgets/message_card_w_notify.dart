import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger/inc/app_theme.dart';

class MessageCardwNotify extends StatelessWidget {
  final name;
  final imgsrc;
  final msg;
  final msgtime;
  final notifications;
  const MessageCardwNotify({
    this.name,
    this.imgsrc,
    this.msg,
    this.msgtime,
    this.notifications,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color(0xFF46F586),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Container(
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          imgsrc,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        msg,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: AppTheme.textColor),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    msgtime,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: AppTheme.secondaryColor),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0xFF46F586),
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          notifications,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
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
