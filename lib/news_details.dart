import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/utilities/layout_utilities.dart';
import 'package:flutter_html/flutter_html.dart';


class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.unsplash.com/photo-1524946274118-e7680e33ccc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 250,
          ),
          SliverFillRemaining(
            child: newsDetailsSection(),
          )
        ],
      ),
    );
  }

  Widget newsDetailsSection() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          row1(),
          LayoutUtils.iconText(Icon(Icons.timer), Text("02nd Jan, 2021")),
          SizedBox(height: 15,),
          Text("Sample news",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
          SizedBox(child: Divider(color: Colors.grey,thickness: 2,),width: 100,),
          Expanded(child: Html(
            style: {
              "p" : Style(color: Colors.grey,fontSize: FontSize.larger)
            },
            data: "<p>Test News</p><p>Also Test news</p>",
          ))
        ],
      ),
    );
  }

  Widget row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Sports",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.moon)),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bookmark)),

            ],
          ),
        )
      ],
    );
  }
}
