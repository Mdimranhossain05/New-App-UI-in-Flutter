import 'package:flutter/material.dart';
import 'package:news/widgets/news_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabs.add(tab("Technology"));
    tabs.add(tab("Business"));
    tabs.add(tab("Entertainment"));
    tabs.add(tab("Sports"));
    tabs.add(tab("Health"));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(title: Text("News App"),elevation: 0,//elevation will be checked
          bottom: TabBar(tabs: tabs,isScrollable: true,labelColor: Colors.red,unselectedLabelColor: Colors.black,indicatorSize: TabBarIndicatorSize.label,indicatorColor: Colors.red,),
          actions: <Widget>[
            Icon(Icons.search,color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.notifications,color: Colors.black,)
          ],
        ),
        body: TabBarView(children: tabs.map((model) => Container(child: NewsCardWidget(),)).toList(),),
      ),
    );
  }
  Widget tab(String tabName){
    return Tab(
      text: tabName,
    );
  }
}
