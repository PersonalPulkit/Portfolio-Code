import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/constants/media_size.dart';
import 'package:portfolio_v1_02/view_models/navbaritemviewmodel.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../providers/theme_provider.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    NavBarItemViewModel navBar = NavBarItemViewModel();

    final screenWidth = MediaQuery.of(context).size.width;
    final Size size = MediaQuery.of(context).size;
    final ItemScrollController scrollController = ItemScrollController();

    Container buildNavBarAnimatedContainer(int index) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            left: screenWidth * 0.01, right: screenWidth * 0.01),
        child: Text(
          navBar.menu[index].item,
        ),
      );
    }

    ListTile buildDrawerListTile(int index) {
      return ListTile(
        leading: navBar.menu[index].icon,
        title: Text(navBar.menu[index].item),
      );
    }

    void scrollToIndex(int index) {
      scrollController.scrollTo(
        index: index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Switch(
              thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return const Icon(Icons.light_mode);
                  }
                  return const Icon(Icons.dark_mode);
                },
              ),
              value: context.watch<ThemeProvider>().getSelectedTheme,
              onChanged: (bool value) {
                context.read<ThemeProvider>().setSelectedTheme(value);
              }),
        ],
        title: MediaSize.isCompact(size)
            ? Container(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.01, right: screenWidth * 0.01),
                child: const Text(
                  "Pulkit Birla",
                  style: TextStyle(fontSize: 20),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.01, right: screenWidth * 0.01),
                    child: const Text(
                      "Pulkit Birla",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      itemCount: navBar.menu.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            scrollToIndex(index);
                          },
                          borderRadius: BorderRadius.circular(100),
                          child: buildNavBarAnimatedContainer(index),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.01,
                  )
                ],
              ),
        elevation: 0,
      ),
      drawer: MediaSize.isCompact(size)
          ? Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/image.png",
                          height: 75,
                          width: 75,
                        ),
                        const Text('Welcome!'),
                      ],
                    ),
                  ),
                  ListView.builder(
                    itemCount: navBar.menu.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Navigator.of(context).pop();
                          Navigator.of(context).pop();
                          scrollToIndex(index);
                        },
                        borderRadius: BorderRadius.circular(100),
                        child: buildDrawerListTile(index),
                      );
                    },
                  ),
                ],
              ),
            )
          : null,
      body: ScrollablePositionedList.builder(
        itemScrollController: scrollController,
        itemCount: (navBar.menu.length + 1),
        itemBuilder: (_, index) {
          return (index != (navBar.menu.length))
              ? navBar.menu[index].widget
              : Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.arrow_upward,
                        size: 25,
                      ),
                    ),
                    onTap: () {
                      scrollToIndex(0);
                    },
                  ),
                );
        },
      ),
    );
  }
}
