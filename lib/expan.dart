//import 'package:flutter/material.dart';
//
//class ExpanDemo extends StatefulWidget {
//  @override
//  _ExpanDemoState createState() => _ExpanDemoState();
//}
//
//class _ExpanDemoState extends State<ExpanDemo> {
//
//  List<int> list;
//  List<ExpanBean> eBean;
//
//  _ExpanDemoState(){
//    list = List();
//    eBean = List();
//    for(int i = 0;i< 10;i++){
//      list.add(i);
//      eBean.add(ExpanBean(i, false));
//    }
//  }
//
//  _changeState(int index,isExpand){
//    setState(() {
//      eBean.forEach((item){
//        if(item.index == index){
//          item.isOpen =!isExpand;
//        }
//      });
//    });
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('flutter折叠'),
//      ),
//      body: SingleChildScrollView(//可滚动组件
//        child: ExpansionPanelList(
//          expansionCallback: (index,bool){
//            _changeState(index, bool);
//          },
//          children: list.map((index){
//            return ExpansionPanel(
//                headerBuilder: (context,isExpanded){
//                  return ListTile(
//                    title: Text('爱智康 - $index'),
//                  );
//                },
//                body: ListTile(
//                  title: Text('马龙 - $index'),
//                ),
//              isExpanded: eBean[index].isOpen
//            );
//          }).toList(),
//        ),
//      ),
//    );
//  }
//
//
//}
//
//class ExpanBean{
//  var index;
//  var isOpen;
//  ExpanBean(this.index, this.isOpen);
//}
//

import 'package:flutter/material.dart';

class Expan extends StatefulWidget {
  @override
  _ExpanState createState() => _ExpanState();

}

class _ExpanState extends State<Expan> {

  List<int> list;
  List<ExpanBean> expanBean;

  _current(int i,bool b){
    setState(() {
      expanBean.forEach((item){
        if(item.index == i){
          item.isOpen = !b;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('这是新写的折叠布局'),),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (i,isExpan){
            _current(i,isExpan);
          },
          children: list.map((index){
            return ExpansionPanel(
              headerBuilder: (context,bol){
                return ListTile(title: Text('我是谁.$index'),);
              },
              body: ListTile(title: Text('我是马龙.$index'),),
              isExpanded: expanBean[index].isOpen
            );
          }).toList(),
        ),
      ),
    );
  }

  _ExpanState(){
    list = List();
    expanBean = List();
    for(int i=0;i<10;i++){
      list.add(i);
      expanBean.add(ExpanBean(i, false));
    }
  }
}

class ExpanBean{
  var index;
  var isOpen;

  ExpanBean(this.index, this.isOpen);
}
