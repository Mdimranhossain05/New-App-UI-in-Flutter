import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/news_details.dart';
import 'package:news/utilities/layout_utilities.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: new InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetails()));
        },
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(child: Image.network("https://images.unsplash.com/photo-1524946274118-e7680e33ccc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",height: 200,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),),
                Align(alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(15)),
                  child: Text("Technology",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ),)
              ],
            ),
           Padding(padding: EdgeInsets.all(15),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text("Sample News",textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
               SizedBox(height: 16,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   LayoutUtils.iconText(Icon(Icons.timer), Text("02nd Jan, 2021",style: TextStyle(fontSize: 14,color: Colors.black),)),
                   GestureDetector(onTap: (){},
                   child: Icon(Icons.favorite_border),
                   )
                 ],
               )
             ],
           ),
           )
          ],
        ),
      ),
    );
  }
}
