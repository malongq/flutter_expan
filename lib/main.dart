//import 'package:flutter/material.dart';
//
//void main()=>runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: '折叠布局',
//      theme: ThemeData.light(),
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('折叠布局'),
//        ),
//        body: Center(
//          child: ExpansionTile(
//            title: Text('好未来学而思爱智康事业部'),
//            leading: Icon(Icons.accessible),
//            backgroundColor: Colors.deepPurpleAccent.withOpacity(0.5),
//            children: <Widget>[
//              ListTile(
//                leading: Icon(Icons.directions_bike,color: Colors.red),
//                title: Text('业务技术部'),
//                subtitle: Text('马龙'),
//              ),
//              ListTile(
//                leading: Icon(Icons.airplanemode_active,color: Colors.green),
//                title: Text('教学技术部'),
//                subtitle: Text('玛瑙'),
//              ),
//              ListTile(
//                leading: Icon(Icons.wc,color: Colors.blueAccent),
//                title: Text('用户技术部'),
//                subtitle: Text('玉石'),
//              )
//            ],
//            initiallyExpanded: false,
//          ),
//        ),
//      ),
//    );
//  }
//}

import 'package:flutter/material.dart';
import 'expan.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '折叠',
      theme: ThemeData.dark(),
      home: aa(),
    );
  }
}

class aa extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '折叠',
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: ExpansionTile(
            title: Text('没人见他说过话哈哈'),
            leading: Icon(Icons.wc),
            backgroundColor: Colors.green,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.directions_bike),
                title: Text('哈哈哈哈'),
                subtitle: Text('卓木强巴'),
              ),
              ListTile(
                leading: Icon(Icons.directions_bike),
                title: Text('哈哈哈哈'),
                subtitle: Text('卓木强巴'),
              ),
              ListTile(
                leading: Icon(Icons.directions_bike),
                title: Text('哈哈哈哈'),
                subtitle: Text('卓木强巴'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return Expan();}));
                },
              ),
              IconButton(
                  icon: Icon(Icons.input),
                  onPressed: (){
                    print('点击生效');
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){return Expan();}));
                  }
              )
            ],
          ),
        ),
      ),
    );
  }

}