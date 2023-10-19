import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lizzy_notes/main.dart';
import 'package:lizzy_notes/screens/main_page.dart';
import 'package:lizzy_notes/utils/colors.dart';

import '../utils/global_variables.dart';
import '../widgets/note_bottom_sheet.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: PageView(
            children: homeScreenItems,
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: onPageChanged,
          ),
          bottomNavigationBar: CupertinoTabBar(
            backgroundColor: backgroundColor,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.view_agenda,
                  color: _page == 0 ? highlightColor : defaultColor,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.inbox,
                  color: _page == 1 ? highlightColor : defaultColor,
                ),
              ),
            ],
            onTap: navigationTapped,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16.0),
                  ),
                ),
                builder: (context) => Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddNoteBottomSheet(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: backgroundColor,
                border: Border.all(
                  color: Colors.white, // Set the border color you desire
                  width: 3, // Set the border width as needed
                ),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
