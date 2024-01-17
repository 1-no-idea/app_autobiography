import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    screen1(),
    screen2(),
    screen3(),
    screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    if (currentIndex==0) player.play(AssetSource("1.mp3"));
    return MaterialApp(
      title: '我的自傳',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
                       useMaterial3: true,),
      home: Scaffold(
        appBar: AppBar(title: Text('我的自傳(音樂有點小聲):',style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontWeight: FontWeight.w800,fontSize: 30,color: Colors.indigo)),backgroundColor: Colors.greenAccent,),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18,
          unselectedFontSize: 14,
          iconSize: 30,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: currentIndex==0? Image.asset('images/5.jpg',width:40,height:40): Image.asset('images/f1.jpg',width:20,height:20), label:'自我介紹',),
            BottomNavigationBarItem(icon: Icon(Icons.school), label:'學習歷程',),
            BottomNavigationBarItem(icon: Icon(Icons.schedule_outlined), label:'學習計畫',),
            BottomNavigationBarItem(icon: Icon(Icons.engineering), label:'專業方向',),
          ],
          onTap: (index) {
            setState(() {
              previousIndex=currentIndex;
              currentIndex=index;
              if (index==0) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('1.mp3'));
              }
              if (index==1) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('2.mp3'));
              }
              if (index==2) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('3.mp3'));
              }
              if (index==3) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('4.mp3'));
              }
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我出生在平凡的家裡，家裡有我和姊姊兩個小孩，而父母雖然希望我們考得好，但也不會因為成績不好而打罵我們，從小爸媽就只要求我們兩件事: 1. 不犯法 2. 不抽菸，因此我在童年過的滿愉快的，在讀國小時我的個性算是比較活潑的，'
      '常常會利用下課時間跟同學一起去打球，當我到了國中時成績有逐漸變好的趨勢，而打球的時間也從下課時間變成了放學時間，而我在國中時擔任過不少的幹部，例如:衛生、自然小老師等等的職位。等到國中畢業後我上了台南高工，而這段期間班級排名也有維持在前10名，期間也擔任蠻多種幹部的，像是副班長、服務股長等等。在這期間我學到了不少東西，尤其是在人與人交際這方面，在高中以前我是非常內向的，但是在高中擔任比較重要的幹部後因為需要常常跟人溝通，因此我在人與人交際方面也變得更敢開口了。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),

            child: Text('Who am I', style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontSize: 55, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(22),
            margin: EdgeInsets.fromLTRB(35, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.redAccent.withOpacity(0.5), width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.black, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
          ),
          SizedBox(height: 10,),
          //放一張照片
          Container(
            width: 150,
            height:150,
            decoration: BoxDecoration(
              border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: AssetImage('images/2.jpg'), fit: BoxFit.cover),
            ),
            //color: Colors.white,
          ),
          SizedBox(height: 10,),
          Container(
            width: 150,
            height:150,
            decoration: BoxDecoration(
              border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: AssetImage('images/3.jpg'), fit: BoxFit.cover),
            ),
            //color: Colors.white,
          ),
          SizedBox(height: 10,),
          Container(
            width: 150,
            height:150,
            decoration: BoxDecoration(
              border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: AssetImage('images/4.jpg'), fit: BoxFit.cover),
            ),
            //color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String s1='在做這個專案的時候一開始什麼都不懂，但是跟著組員一起摸索後，逐漸將不懂的漸漸學會，從中學到了不少在上課中沒有學過的東西。';
    return SingleChildScrollView(
        child: Column(
          children: [
            Text('證照:', style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontWeight: FontWeight.w800,fontSize: 30,color: Colors.black),),
            Container(
                height: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('images/6.jpg'), fit: BoxFit.cover),
                )
            ),
            SizedBox(height: 10,),
            Container(
                height: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('images/7.jpg'), fit: BoxFit.cover),
                )
            ),
            Divider(),
            Text('大學做過的專案:', style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontWeight: FontWeight.w800,fontSize: 30,color: Colors.black),),
            Container(
                height: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('images/9.jpg'), fit: BoxFit.cover),
                )
            ),
            SizedBox(height: 10,),
            Container(
                height: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('images/8.jpg'), fit: BoxFit.cover),
                )
            ),
            SizedBox(height: 10,),
            Container(
                height: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('images/10.jpg'), fit: BoxFit.cover),
                )
            ),
            Container(
              padding: EdgeInsets.all(22),
              margin: EdgeInsets.fromLTRB(35, 0, 30, 50),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent.withOpacity(0.5), width:3.5),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(6, 6)),
                ],
              ),
              child: Text(s1, style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
            ),
          ],
        )
    );
  }
}
class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(children: [
        Divider(),
        Container(
          height: 150,
          color:Colors.black.withOpacity(0.1),
          child: Row(
              children: [
                Row(
                  children: [
                    Text('大一時期',style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontSize: 30),),
                  ],
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    Container(
                      height:110,
                      width: 200,
                      child: ListView(
                        children: [
                          Text('1. 學C語言',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                          Text('2. 讓自己不要太過於懶惰讀書',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                          Text('3. 聽英聽',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                        ],
                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),

        Container(
          height: 150,
          color:Colors.black.withOpacity(0.1),
          child: Row(
              children: [
                Row(
                  children: [
                    Text('大二時期',style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontSize: 30),),
                  ],
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    Container(
                      height:110,
                      width: 200,
                      child: ListView(
                        children: [
                          Text('1.組合語言',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                          Text('2.java語言',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                          Text('3.線性代數',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                          Text('4.定期去打羽球',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                        ],
                      ),
                    ),
                  ],
                )
              ]
          )
        ),
        Container(
            height: 150,
            color:Colors.black.withOpacity(0.1),
            child: Row(
                children: [
                  Row(
                    children: [
                      Text('大三時期',style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontSize: 30),),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Container(
                        height:110,
                        width: 200,
                        child: ListView(
                          children: [
                            Text('1. 專題',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                            Text('2. 學python',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                            Text('3. 英文學習',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]
            )
        ),
        Container(
            height: 150,
            color:Colors.black.withOpacity(0.1),
            child: Row(
                children: [
                  Row(
                    children: [
                      Text('大四時期',style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontSize: 30),),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Container(
                        height:110,
                        width: 200,
                        child: ListView(
                          children: [
                            Text('1.校外實習',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                            Text('2.熟悉職場環境',style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontSize: 20),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]
            )
        ),
      ],),
    );
  }
}
class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String s1='目前對於以下幾項比較有興趣，雖然在這些方面都只有接觸到皮毛，但是未來有機會的話我會想試試看這幾種方面的工作。';
    final String s2='強調保護資訊系統免受未經授權的訪問、損害或攻擊。學生可能學到加密技術、入侵檢測系統、安全策略等相關知識。';
    final String s3='透過html、css、js等程式語言來開發網頁，讓網頁傭有更多功能以及一些ui設計等';
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(s1, style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontWeight: FontWeight.w800,fontSize: 25,color: Colors.black),),
            Text('  (1)資訊安全:', style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontWeight: FontWeight.w800,fontSize: 40,color: Colors.black,),),
            Container(
                height: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('images/11.jpg'), fit: BoxFit.cover),
                ),
            ),
            Text(s2, style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontWeight: FontWeight.w800,fontSize: 25,color: Colors.black),),
            SizedBox(height: 10,),
            Text('  (2)網頁設計:', style: TextStyle(fontFamily: 'ChenYuluoyan-Thin-Monospaced',fontWeight: FontWeight.w800,fontSize: 40,color: Colors.black,),),
            Container(
                height: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('images/13.jpg'), fit: BoxFit.cover),
                )
            ),
            Text(s3, style: TextStyle(fontFamily: 'ThePeakFontBeta_V0_101',fontWeight: FontWeight.w800,fontSize: 25,color: Colors.black),),
          ],
        )
    );
  }
}