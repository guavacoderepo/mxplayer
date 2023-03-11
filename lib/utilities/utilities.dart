import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appText(String text, double size, FontWeight weight, Color color) {
  return Text(
    text,
    style: GoogleFonts.mulish(fontSize: size, fontWeight: weight, color: color),
  );
}

// ###################drawer
class DrawerUtil extends StatefulWidget {
  const DrawerUtil({Key? key}) : super(key: key);

  @override
  State<DrawerUtil> createState() => _DrawerUtilState();
}

class _DrawerUtilState extends State<DrawerUtil> {
  bool dark = false;
  bool video = false;
  bool safe = false;
  bool data = false;
  bool d1 = false;
  bool d2 = false;
  bool d3 = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 233, 232, 232),
      child: ListView(
        // padding: const EdgeInsets.all(0),

        children: [
          SizedBox(
            height: 70,
            child: DrawerHeader(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 35,
                    ),
                  ),
                  const SizedBox(width: 15),
                  appText("Sign In", 18, FontWeight.w600, Colors.white),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.download_rounded,
                              size: 28, color: Colors.blue),
                        ),
                        appText("My", 12, FontWeight.w400, Colors.black54)
                      ],
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add, size: 28, color: Colors.blue),
                        ),
                        appText("My List", 12, FontWeight.w400, Colors.black54)
                      ],
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.mobile_screen_share_sharp,
                              size: 28, color: Colors.blue),
                        ),
                        appText("MX Share", 12, FontWeight.w400, Colors.black54)
                      ],
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.folder_outlined,
                              size: 28, color: Colors.blue),
                        ),
                        appText(
                          "Local Music",
                          12,
                          FontWeight.w400,
                          Colors.black54,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // ################## container one
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  children: [
                    listtile("WhatsApp Status Saver", Icons.whatsapp_sharp,
                        color: Colors.green),
                    const SizedBox(height: 22),
                    listtile(
                      "App Language",
                      Icons.system_security_update_warning_outlined,
                    ),
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        listtile("Dark Theme", Icons.dark_mode_outlined),
                        Expanded(child: Container()),
                        CupertinoSwitch(
                          value: dark,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              dark = value;
                              // print(dark);
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        listtile(
                          "Make Video default",
                          Icons.video_collection_outlined,
                        ),
                        Expanded(child: Container()),
                        CupertinoSwitch(
                          value: video,
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              video = value;
                              // print(dark);
                            });
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 40),
                      child: appText(
                        "Open Video section on app Launch",
                        10,
                        FontWeight.w200,
                        Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              // ###############container two

              Container(
                margin:
                    const EdgeInsets.only(top: 0, left: 8, bottom: 8, right: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          appText("Local", 18, FontWeight.w500, Colors.black54),
                          Expanded(child: Container()),
                          Icon(
                            d1
                                ? Icons.keyboard_arrow_down_sharp
                                : Icons.keyboard_arrow_right_sharp,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                      onTap: () {
                        setState(() {
                          d1 = !d1;
                          d2 = false;
                          d3 = false;
                        });
                      },
                    ),
                    d1
                        ? Container(
                            child: Column(
                              children: [
                                const SizedBox(height: 22),
                                listtile(
                                  "Private Folder",
                                  Icons.lock_outline_rounded,
                                ),
                                const SizedBox(height: 22),
                                listtile(
                                  "Equalizer",
                                  Icons.graphic_eq_sharp,
                                ),
                                const SizedBox(height: 22),
                                listtile(
                                  "Video Playlists",
                                  Icons.playlist_play_rounded,
                                ),
                                const SizedBox(height: 22),
                                listtile(
                                  "Network Stream",
                                  Icons.language,
                                ),
                                const SizedBox(height: 22),
                                listtile(
                                  "Local Network",
                                  Icons.display_settings,
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
// ################################## container 3
              Container(
                margin:
                    const EdgeInsets.only(top: 0, left: 8, bottom: 8, right: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          appText(
                              "Online", 18, FontWeight.w500, Colors.black54),
                          Expanded(child: Container()),
                          Icon(
                            d2
                                ? Icons.keyboard_arrow_down_sharp
                                : Icons.keyboard_arrow_right_sharp,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                      onTap: () {
                        setState(() {
                          d2 = !d2;
                          d1 = false;
                          d3 = false;
                        });
                      },
                    ),
                    d2
                        ? Container(
                            child: Column(
                              children: [
                                const SizedBox(height: 22),
                                listtile(
                                    "Play Game", Icons.sports_esports_outlined),
                                const SizedBox(height: 22),
                                listtile("Watch  History", Icons.access_time),
                                const SizedBox(height: 22),
                                listtile("Subscribe Channel",
                                    Icons.turned_in_not_rounded),
                                const SizedBox(height: 22),
                                listtile("My Preferences",
                                    Icons.heart_broken_outlined),
                                const SizedBox(height: 22),
                                listtile(
                                  "Shopping List",
                                  Icons.shopping_cart_outlined,
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),

              // ################################## container 4
              Container(
                margin:
                    const EdgeInsets.only(top: 0, left: 8, bottom: 8, right: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          appText(
                              "Settings", 18, FontWeight.w500, Colors.black54),
                          Expanded(child: Container()),
                          Icon(
                            d3
                                ? Icons.keyboard_arrow_down_sharp
                                : Icons.keyboard_arrow_right_sharp,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                      onTap: () {
                        setState(() {
                          d3 = !d3;
                          d1 = false;
                          d2 = false;
                        });
                      },
                    ),
                    d3
                        ? Container(
                            child: Column(
                              children: [
                                const SizedBox(height: 22),
                                listtile("Local Play Settings", Icons.settings),
                                const SizedBox(height: 22),
                                listtile("Download Settings",
                                    Icons.settings_applications_outlined),
                                const SizedBox(height: 22),
                                listtile("Custom PIP Controls",
                                    Icons.folder_outlined),
                                const SizedBox(height: 22),
                                Row(
                                  children: [
                                    listtile("Safe Content Mode",
                                        Icons.signal_wifi_0_bar_outlined),
                                    Expanded(child: Container()),
                                    CupertinoSwitch(
                                      value: safe,
                                      activeColor: Colors.blue,
                                      onChanged: (value) {
                                        setState(() {
                                          safe = value;
                                          // print(dark);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 60),
                                  child: appText(
                                    "Restrict Minors From Viewing inappropriet content by turnong it on",
                                    10,
                                    FontWeight.w300,
                                    Colors.black54,
                                  ),
                                ),
                                const SizedBox(height: 22),
                                Row(
                                  children: [
                                    listtile(
                                      "Eneble Data Saver",
                                      Icons.shopping_cart_outlined,
                                    ),
                                    Expanded(child: Container()),
                                    CupertinoSwitch(
                                      value: data,
                                      activeColor: Colors.blue,
                                      onChanged: (value) {
                                        setState(() {
                                          data = value;
                                          // print(dark);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 60),
                                  child: appText(
                                    "Optimizes Auto selection in Online Videos",
                                    10,
                                    FontWeight.w300,
                                    Colors.black54,
                                  ),
                                ),
                                const SizedBox(height: 22),
                                listtile("Ad Preferences",
                                    Icons.edit_attributes_outlined),
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 0, left: 8, bottom: 8, right: 8),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        appText("Legal", 13, FontWeight.w500, Colors.black87),
                        Expanded(child: Container()),
                        const Icon(
                          Icons.keyboard_arrow_right_sharp,
                        )
                      ],
                    ),
                    const SizedBox(height: 22),
                    Row(
                      children: [
                        appText("Help", 13, FontWeight.w500, Colors.black87),
                        Expanded(child: Container()),
                        const Icon(
                          Icons.keyboard_arrow_right_sharp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget listtile(String title, IconData icon, {Color color = Colors.black54}) {
  return InkWell(
    child: Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: GoogleFonts.mulish(
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ),
    onTap: () {
      // Navigator.push(context, MaterialPageRoute(
      // builder: (context) => const profile()));
    },
  );
}
