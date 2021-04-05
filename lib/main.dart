import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix-Clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    PageController pageController = PageController();
    void onTap(int pageValue) {
      setState(() {
        selectedIndex = pageValue;
      });
      pageController.jumpToPage(pageValue);
    }

    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        selectedFontSize: 12.0,
        unselectedFontSize: 11.0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_done_outlined),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: 'More',
          ),
        ],
        onTap: onTap,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.black,
            leading: Image.asset('img/icon.png', scale: 20.0),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text('TV Shows',
                      style: TextStyle(color: Colors.white, fontSize: 18.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text('Movies',
                      style: TextStyle(color: Colors.white, fontSize: 18.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text('My List',
                      style: TextStyle(color: Colors.white, fontSize: 18.0)),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: Image.asset('img/bg.jpg'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: null,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'img/plus.png',
                            scale: 22.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'My List',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          label: Text(
                            'Play',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          )),
                    ),
                    MaterialButton(
                      onPressed: null,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'img/info.png',
                            scale: 22.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Info',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
