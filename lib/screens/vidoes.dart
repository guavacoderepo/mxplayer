import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mxplayer/utilities/utilities.dart';

class Videospage extends StatefulWidget {
  const Videospage({Key? key}) : super(key: key);

  @override
  State<Videospage> createState() => _VideospageState();
}

class _VideospageState extends State<Videospage> {
  int currentInt = 1;
  var drawer = const DrawerUtil();
  List<String> nigeria = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTclFJ026D7pbEunRxV1YqxfUVGu-XNupezZw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3fN4719nA4UBKADkl09icDoiBChnvhP6AyQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxY3QSF9oD7DruzWPfyDISLqlXSC2iPAR7RA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScaDoCDmQd9ge0Dr9BZyXGbYAM2wAmA6vY5A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRun8K9it3gWsqjHo5WQEEzIcXinqtg7Zw77Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOCYTpSGVboyJs-OeVmzhdRptNCtN8YnGj_A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjlWLYCFj8w41IrP7NsWh4sR3Y3wsvw6pgTA&usqp=CAU",
  ];
  List<String> action = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAxkNPNfHto72TUsrjj5HqrvyEq8WrfaaAqg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzgy-WXo8YUXo1hi0Ngkd44jfJZHrLOKn8Kg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ_ZiRnwo04Q1n0B9jO6ik8H5tz2uPDQ5X8Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg2qqF70CM_yaevZ659VKtPke5tNXPz4Lnfw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8mJoNRyJLXaLNalEw442V1rTGERT_9CmxPw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb19Tx8eE5W95FgCywhJFm8f4AxtAsdC6bJQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-4oy3JWfGYUuoaw3TK6aE9M76TLmjixB02Q&usqp=CAU",
  ];
  List<String> indian = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5v2r3sXyqmzeJp_pvYbVzZMFsjX8C1Kh4aw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJ6Vogh7poVHvauMQuATq7nGWB8lnCEBgAg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ08CaKC4RW_12PF6COyvkG_tyqisoDxP_T4Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT19SudOuAJARI7qvRQWRQVixktE4Yx9y_HgQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN2ypnPlDuOwJRO3Kd6F6YSw3BlMTc2NUNtw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6TfqldsbwN345yTSvOIO0Xt9B2195WRN19A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgawwNF8OhFsE1xLEHeszYmzpr-O82fabDNw&usqp=CAU",
  ];
  List<String> love = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiwDERcZ4U4muj7hEUu15aG5E6QHC4p-CrHA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRclZDFn2h18hkPABzzjqgubDMknsm8n_IYBw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi0rRLq3jqu9sC2ZbtbqztDi7_x1i5e037Ng&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwH1rzjEpvQJjnKtNVUw0cg5SWpioF4pJEAg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTbbQ_CBLmNAtkEm2KEKyiX4UfGGLE9NtRHw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYKzMy0pkDeEsx0yoHJDy-djaMDM_314BaoA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE8bw9ClGhWu7REfmFnL6Y3mQx8cM102CGKg&usqp=CAU",
  ];
  List<String> series = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTemqh8vX4YAshIyt_QX2A1TzUur5V8Ezmd-w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHrtKp14M_VJYnUetRgbyt7aRAGnZAJK5YtQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpy9JYcM-fPRyh-gPdfBvzzYzqXjApcsBxBw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStd52WkzcWPHd9HrQHJB3BKgwtZx0UfX9NzA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7kgUV1eWNGG3XTDp8Ug4fhBx6shfDUsrK5A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhCGsgPeDDqWEQIUDhLQq1iXeTUvKJn5P45w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr5WVH2N4i0vEaiIDc97bcI1BYCZ9ScWZ1mg&usqp=CAU",
  ];
  List<String> cartoon = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyvVnuhXjrl5Ney7IYgGv-N9lWHZFfirjmAg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNSYouvZbhmIvohbI-1MDKkXqAmwCt3Z0azg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF1yZGlKE_Bxvii_9ApZnpgtmZXytBt1AawQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZBXPGz5illEdxQgsO2ea3N9AdEZpeR17vZg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuMJwA6mHMcctszw3GY3DlYoonEqaAE5Ea0Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILlE2Ibi9R09M8__qCwm9cVgpSXSpP1--Iw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo-zuupAzXw06WgE_zBwcwXtI1rBoDqUePWQ&usqp=CAU",
  ];
  List<String> family = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxzcltMB5Rso0M6foVPAAjyAfDHVBW3KSoCA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGjH8-ZVEGs1Eh5au_f0oXerEbRDa6Egcj3w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvBnxJSKhi2i5_xvGkxDWNFntEqSR9LW4Kag&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRotfAuyK4IODQZ47G5ch8xUzTxcboGjAdQTQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrkFl6MEXFhvpWlpJq2QZEc5EH8osDBeiTNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPIiHpHAAJNNWjekb79Ve4CMVcyXtL8LlsQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKVNGKGHsJYKKCKqmQiqlEgBQnSU1wPYo-FQ&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: drawer,
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          elevation: 2,
          currentIndex: currentInt,
          backgroundColor: const Color.fromARGB(255, 253, 253, 253),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              label: "Local",
              icon:
                  Icon(currentInt != 0 ? Icons.folder_outlined : Icons.folder),
            ),
            BottomNavigationBarItem(
              label: "Video",
              icon: Icon(currentInt == 1
                  ? Icons.play_circle
                  : Icons.play_circle_outline),
            ),
            BottomNavigationBarItem(
              label: "Games",
              icon: Icon(currentInt != 2
                  ? Icons.sports_esports_outlined
                  : Icons.sports_esports_rounded),
            ),
          ],
          onTap: (int value) {
            setState(() {
              currentInt = value;
            });
          },
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: ((context, innerBoxIsScrolled) => [
                SliverAppBar(
                  systemOverlayStyle:
                      const SystemUiOverlayStyle(statusBarColor: Colors.blue),
                  // elevation: 2,
                  pinned: true,
                  floating: true,
                  // snap: true,
                  title: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.play_circle,
                        size: 40,
                      ),
                      appText("MX", 20, FontWeight.w800, Colors.white),
                      appText("PLAYER", 20, FontWeight.w200, Colors.white),
                    ],
                  ),
                  // leading: IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(Icons.menu),
                  // ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.download),
                    ),
                  ],
                  bottom: const TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        text: "HOME",
                      ),
                      Tab(
                        text: "MOVIES",
                      ),
                      Tab(
                        text: "SHOWS",
                      ),
                    ],
                  ),
                ),
              ]),
          body: Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
            child: TabBarView(
              children: [
                homePageBuild(),
                moviesPageBuild(),
                showsPageBuild(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget homePageBuild() {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 0),
          child: Image(
            image: const NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5uEjntDgsT4QEcCN9JA72zYVd_fDbfHdpsA&usqp=CAU"),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 0),
          child: Image(
            image: const NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2XpwomyAWa5fd4h-iYpdRO_1cg40JzlXGRw&usqp=CAU"),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
        categories("Top Favourite on MX", family),
        const SizedBox(height: 20),
        categories("Top Movies This Week", series),
        const SizedBox(height: 20),
        categories("Movies You May Like", indian),
        const SizedBox(height: 20),
        categories("Treading Movies", love),
        const SizedBox(height: 20),
        categories("Nollywood Drame", nigeria),
        const SizedBox(height: 20),
        categories("Bing-Worthy Shows", cartoon),
        const SizedBox(height: 20),
        categories("Top Action Movies", action),
      ],
    );
  }

  Widget moviesPageBuild() {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 0),
          child: Image(
            image: const NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9iJWCoTma2Ll757QS3EAFCnoZHJn1YqzgJg&usqp=CAU"),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 0),
          child: Image(
            image: const NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSenDp1CYDjEZCxHRObPP_GJkl7BF-eNAG3mw&usqp=CAU"),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
        categories("Top Favourite on MX", cartoon),
        const SizedBox(height: 20),
        categories("Top Movies This Week", love),
        const SizedBox(height: 20),
        categories("Movies You May Like", family),
        const SizedBox(height: 20),
        categories("Treading Movies", action),
        const SizedBox(height: 20),
        categories("Nollywood Drame", nigeria),
        const SizedBox(height: 20),
        categories("Bing-Worthy Shows", indian),
        const SizedBox(height: 20),
        categories("Top Action Movies", series),
      ],
    );
  }

  Widget showsPageBuild() {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 0),
          child: Image(
            image: const NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSycLebuHOUa8rjKbCgfWX6FVROR7-46tXvoQ&usqp=CAU"),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 0),
          child: Image(
            image: const NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbUmg_e4Hfn5qKaanyFLJAtSfH5HL3nH2alQ&usqp=CAU"),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
        categories("Top Favourite on MX", series),
        const SizedBox(height: 20),
        categories("Top Movies This Week", love),
        const SizedBox(height: 20),
        categories("Movies You May Like", family),
        const SizedBox(height: 20),
        categories("Treading Movies", indian),
        const SizedBox(height: 20),
        categories("Nollywood Drame", nigeria),
        const SizedBox(height: 20),
        categories("Bing-Worthy Shows", cartoon),
        const SizedBox(height: 20),
        categories("Top Action Movies", action), 
      ],
    );
  }

  Widget categories(String text, List list) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              appText(text, 19, FontWeight.w500, Colors.black),
              Expanded(child: Container()),
              InkWell(
                child: appText("SEE MORE", 13, FontWeight.w300, Colors.blue),
              ),
            ],
          ),
          SizedBox(
            height: 210,
            child: ListView.builder(
              itemCount: nigeria.length,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  // color: Colors.grey.shade100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      // color: Colors.grey.shade200,
                      image: NetworkImage(list[index]),
                      fit: BoxFit.fitHeight,
                      width: 115,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
