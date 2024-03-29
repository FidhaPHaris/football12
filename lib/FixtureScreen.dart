import 'package:flutter/material.dart';
import 'package:football12/widgets/LaLiga.dart';
import 'package:football12/widgets/PremierLeague.dart';
import 'package:football12/widgets/UEFA.dart';

class FixtureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('17 May'),
                ),
                Tab(
                  child: Text('18 May'),
                ),
                Tab(
                  child: Text('19 May'),
                ),
                Tab(
                  child: Text('20 May'),
                ),
                Tab(
                  child: Text('21 May'),
                ),
                Tab(
                  child: Text('22 May'),
                ),
              ],
            ),
            preferredSize: Size.fromHeight(20.0),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 2000,
            child: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                      UEFA(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
