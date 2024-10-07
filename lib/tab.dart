import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabb/screens/login.dart';


AppBar buildAppBar(BuildContext context){
return AppBar(
  leading: IconButton(
    icon:Icon(Icons.arrow_back),
    onPressed: (){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>LoginScreen())
    );
    }
  ),
  actions:[
    Builder(builder: (context){
    return IconButton(
      icon:Icon(Icons.menu),
      onPressed:(){
        Scaffold.of(context).openEndDrawer();
        print('메뉴바 클릭됨');
      });
    }


)]);
}
Drawer buildEndDrawer(){
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        //color: Colors.blue,
        ListTile(
          title: Center(
            child:Text("공지사항",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))
          ),
          onTap:(){}
        ),
       //Divider(),
        ListTile(
          title:Center(
            child: Text("이용방법",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))
          ),onTap:(){}
        ),
        ListTile(
          title:Center(
            child: Text("로그아웃",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
          ),
          ),onTap:(){}
        )
        

      ],
    )
  );
}


/*

import 'package:flutter/material.dart';
import 'package:seven/screens/login.dart';
//import 'package:seven/screens/profile.dart';
AppBar buildAppBar(BuildContext context){
      return AppBar(
        //title: Text('Start Screen'),
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),);
            print('메뉴 아이콘 클릭됨');
          },
        ),
        actions: [
          Builder(
          builder: (context){
          return IconButton(
            icon:Icon(Icons.menu),
            onPressed:(){ 
              Scaffold.of(context).openEndDrawer();
              print('메뉴 아이콘 클릭됨');
        },
          );
          },
          ),
        ],
      );}
      Drawer  buildEndDrawer(){ 
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:<Widget>
          [UserAccountsDrawerHeader(
            accountName: Text('User: name', style:  TextStyle(color: Colors.blue)),
            accountEmail: Text('TB@gmail.com', style:  TextStyle(color: Colors.grey)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('TB', style: TextStyle(fontSize: 40.0),
              ),),
              otherAccountsPictures: [
                Icon(Icons.arrow_forward,color: Colors.white),
              ],
            decoration: BoxDecoration(
          color: Colors.blue, // 보라색 대신 다른 색상 (예: 녹색)
        ),
            ),
            ListTile(
              title: Center(
                child: Text('공지사항', style:  TextStyle(color: Colors.blue)),
                ),
                onTap:(){}
            ),
            Divider(),
            ListTile(
              title:Center(
                child: Text('이용방법',style: TextStyle(color:Colors.blue)),
                ),
            onTap:(){}
            ),
            Divider(),
            ListTile(
              title:Center(
                child: Text('+',style: TextStyle(color:Colors.blue)),
                ),
            onTap:(){}
            ),
            Divider(),
            ListTile(
              title:Center(
                child: Text('고객센터',style: TextStyle(color:Colors.blue)),
                ),
            onTap:(){}
            ),
            Divider(),
            SizedBox(height: 50), // 여백 추가
            ListTile(
              title: Center(
                child: Text('로그아웃', style: TextStyle(color: Colors.black)),
              ),
              onTap:(){}
            ),
            ],
        ),

    );
}
*/