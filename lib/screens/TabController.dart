import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starprospect/screens/CollegesEvent.dart';
import 'package:starprospect/screens/CollegesTeams.dart';
import 'package:starprospect/screens/HomeAthletes.dart';
import 'package:starprospect/screens/HomeDeals.dart';
import 'package:starprospect/screens/HomeLatest.dart';
import 'package:starprospect/screens/MessageInbox.dart';
import 'package:starprospect/screens/MessageSent.dart';
import 'package:starprospect/screens/OffersPage.dart';
import 'package:starprospect/screens/RequestPage.dart';
import 'package:starprospect/screens/TeamMembersDetails.dart';
import 'package:starprospect/screens/TeamScheduleDetails.dart';
import 'package:starprospect/screens/TeamUpdateDetails.dart';
import 'package:starprospect/utility/CommonAppBar.dart';
import 'package:starprospect/utility/Text.dart';

class HomeTabControl extends StatefulWidget {
  const HomeTabControl({Key? key}) : super(key: key);

  @override
  State<HomeTabControl> createState() => _HomeTabControlState();
}

class _HomeTabControlState extends State<HomeTabControl> with SingleTickerProviderStateMixin{

  late TabController _tabHomeController;

  @override
  void initState() {
    _tabHomeController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabHomeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TabBar(
              isScrollable: false,
              controller: _tabHomeController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              labelColor: const Color(0xff6A58FB),
              unselectedLabelColor: const Color(0xff7B838A),
              tabs: const [
                Tab(
                  text: CT.latest,
                ),
                Tab(
                  text: CT.athletes,
                ),
                Tab(
                  text: CT.deals,
                ),
              ],
            ),
          ).paddingOnly(top: 10, left: 5, right: 5, bottom: 12),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabHomeController,
              children: const [
                Center(
                  child: HomeLatest(),
                ),
                Center(
                  child: HomeAthletes(),
                ),
                Center(
                  child: HomeDeals(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class OffersTabControl extends StatefulWidget {
  const OffersTabControl({Key? key}) : super(key: key);

  @override
  State<OffersTabControl> createState() => _OffersTabControlState();
}

class _OffersTabControlState extends State<OffersTabControl> with SingleTickerProviderStateMixin{

  late TabController _tabOffersController;

  @override
  void initState() {
    _tabOffersController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabOffersController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TabBar(
              isScrollable: false,
              controller: _tabOffersController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              labelColor: const Color(0xff6A58FB),
              unselectedLabelColor: const Color(0xff7B838A),
              tabs: const [
                Tab(
                  text: 'Offers',
                ),
                Tab(
                  text: 'Request',
                ),
              ],
            ),
          ).paddingOnly(top: 10, left: 5, right: 5, bottom: 12),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabOffersController,
              children: const [
                Center(
                  child: OffersPage(),
                ),
                Center(
                  child: RequestPage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class CollegesTabControl extends StatefulWidget {
  const CollegesTabControl({Key? key}) : super(key: key);

  @override
  State<CollegesTabControl> createState() => _CollegesTabControlState();
}

class _CollegesTabControlState extends State<CollegesTabControl> with SingleTickerProviderStateMixin{

  late TabController _tabCollegesController;

  @override
  void initState() {
    _tabCollegesController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabCollegesController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TabBar(
              isScrollable: false,
              controller: _tabCollegesController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              labelColor: const Color(0xff6A58FB),
              unselectedLabelColor: const Color(0xff7B838A),
              tabs: const [
                Tab(
                  text: 'Team',
                ),
                Tab(
                  text: 'Event',
                ),
              ],
            ),
          ).paddingOnly(top: 10, left: 5, right: 5, bottom: 12),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabCollegesController,
              children: const [
                Center(
                  child: CollegesTeams(),
                ),
                Center(
                  child: CollegesEvent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class TeamTabControl extends StatefulWidget {
  const TeamTabControl({Key? key}) : super(key: key);

  @override
  State<TeamTabControl> createState() => _TeamTabControlState();
}

class _TeamTabControlState extends State<TeamTabControl> with SingleTickerProviderStateMixin{

  late TabController _tabTeamController;

  @override
  void initState() {
    _tabTeamController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabTeamController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TabBar(
              isScrollable: false,
              controller: _tabTeamController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              labelColor: const Color(0xff6A58FB),
              unselectedLabelColor: const Color(0xff7B838A),
              tabs: const [
                Tab(
                  text: 'Members',
                ),
                Tab(
                  text: 'Schedule',
                ),
                Tab(
                  text: 'Update',
                ),
              ],
            ),
          ).paddingOnly(top: 10, left: 5, right: 5, bottom: 12),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabTeamController,
              children: const [
                Center(
                  child: TeamMembers(),
                ),
                Center(
                  child: TeamSchedule(),
                ),
                Center(
                  child: TeamUpdate(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class MessageTabControl extends StatefulWidget {
  const MessageTabControl({Key? key}) : super(key: key);

  @override
  State<MessageTabControl> createState() => _MessageTabControlState();
}

class _MessageTabControlState extends State<MessageTabControl> with SingleTickerProviderStateMixin{

  late TabController _tabMessageController;

  @override
  void initState() {
    _tabMessageController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabMessageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        titleEx: 'Messages',
        centerTitle: true,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
        action: [
          IconButton(
              onPressed: (){},
              icon: const ImageIcon(
                AssetImage('assets/image/IconFilter.png'),
              ),
          ),
        ]
      ),
      body: Column(
        children: [
          Card(
            shape: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: TabBar(
              isScrollable: false,
              controller: _tabMessageController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              labelColor: const Color(0xff6A58FB),
              unselectedLabelColor: const Color(0xff7B838A),
              tabs: const [
                Tab(
                  text: 'Inbox',
                ),
                Tab(
                  text: 'Sent',
                ),
              ],
            ),
          ).paddingOnly(top: 20, left: 15, right: 15),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabMessageController,
              children: const [
                Center(
                  child: MessageInbox(),
                ),
                Center(
                  child: MessageSent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}