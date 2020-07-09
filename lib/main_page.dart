import 'package:facebook_flutter_web/constants.dart';
import 'package:facebook_flutter_web/components/nav.dart';
import 'package:facebook_flutter_web/pages/page_home.dart';
import 'package:facebook_flutter_web/top_nav_dialog/nav_dialog_holder.dart';
import 'package:flutter/material.dart';
import 'package:facebook_flutter_web/top_nav_dialog/add_dialog.dart';
import 'package:facebook_flutter_web/top_nav_dialog/messenger_dialog.dart';
import 'package:facebook_flutter_web/top_nav_dialog/notification_dialog.dart';
import 'package:facebook_flutter_web/top_nav_dialog/profile_dialog.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  nav_items c = nav_items.close;
  nav_choices ct = nav_choices.none;
  tabs t = tabs.tab1;

  final PageStorageBucket _bucket = PageStorageBucket();
  final List<Widget> dialogs = [
    AddDialog(),
    MessengerDialog(),
    NotificationDialog(),
    ProfileDialog(),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background_color,
      body: GestureDetector(
        onTap: (){
          setState(() {
            ct = nav_choices.none;
            c = nav_items.close;
          });
        },
        child: Container(
          child: Stack(
            children: [

              Column(
                children: [
                  //This is the top bar in our facebook demo page
                  Nav(
                    color_1: ct == nav_choices.add ? Colors.blue : Colors.white,
                    color_2: ct == nav_choices.messenger ? Colors.blue : icon_color,
                    color_3: ct == nav_choices.notification ? Colors.blue : icon_color,
                    color_4: ct == nav_choices.profile ? Colors.blue : icon_color,
                    on_add_clicked: (){
                      setState(() {
                        c = nav_items.open;
                        ct = nav_choices.add;
                        index = 0;
                      });
                    },
                    on_messenger_Clicked: (){
                      setState(() {
                        c = nav_items.open;
                        ct = nav_choices.messenger;
                        index = 1;
                      });
                    },
                    on_notification_clicked: (){
                      setState(() {
                        c = nav_items.open;
                        ct = nav_choices.notification;
                        index = 2;
                      });
                    },
                    on_profile_clicked: (){
                      setState(() {
                        c = nav_items.open;
                        ct = nav_choices.profile;
                        index =3;
                      });
                    },
                    //Tabs active
                    tab_1_active: t == tabs.tab1 ? true : false,
                    tab_2_active:  t == tabs.tab2 ? true : false,
                    tab_3_active:  t == tabs.tab3 ? true : false,
                    tab_4_active:  t == tabs.tab4 ? true : false,

                    //Tans clicked
                    on_tab_1_clicked: (){
                      print("clickes");
                      setState(() {
                        t = tabs.tab1;
                      });
                    },
                    on_tab_2_clicked: (){
                      setState(() {
                        t = tabs.tab2;
                      });
                    },
                    on_tab_3_clicked: (){
                      setState(() {
                        t = tabs.tab3;
                      });
                    },
                    on_tab_4_clicked: (){
                      setState(() {
                        t = tabs.tab4;
                      });
                    },
                  ),

                  //The body
                 Expanded(
                     child: PageHome()
                 )
                ],
              ),
              Visibility(
                visible: c == nav_items.close ? false : true,
                child: NavDialogHolder(
                    child: Column(
                      children: [
                        PageStorage(bucket: _bucket, child: dialogs[index]),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum nav_items {
  open,
  close
}

enum nav_choices {
  add,
  messenger,
  notification,
  profile,
  none
}

enum tabs {
  tab1,
  tab2,
  tab3,
  tab4
}


