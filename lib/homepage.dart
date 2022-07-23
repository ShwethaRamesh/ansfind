import 'package:ansfind_app/drawermenu.dart';
import 'package:ansfind_app/login.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBar(
            centerTitle: true,
            title: Image.asset(
              "assets/images/logowhite.png",
              fit: BoxFit.contain,
              height: 35,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.person_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        curve: Curves.linear,
                        type: PageTransitionType.scale,
                        alignment: Alignment.topCenter,
                        child: LoginDemo(),
                      ),
                    );
                    // const Login_page();
                  }),
            ],
            backgroundColor: Color(0xFFFF9800),
          )),
      drawer: drawermenu(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.interests), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.currency_exchange), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.person), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.emoji_events), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
