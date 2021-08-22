import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

//앱 시작부분
void main() {
  runApp(MyApp());
}

//시작클래스. 머티리얼 디자인 앱 생성
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      // 표시할 화면의 인스턴스
    );
  }
}

//시작 클래스가 실제로 표시하는 클래스. 카운터 앱화면
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//위 MyHomePageSate 클래스의 상태를 나타내는 state 클래스
class _MyHomePageState extends State<MyHomePage> {
//화면에 UI를 그리는 메서드. 그려질 위젯을 반환
  var _index = 0; //페이지인덱스 0,1,2
  //3개의 페이지를 표현할 수 있도록 _index변수를 준비, 각페이지는 0,1,2의 값을 가진다
  var _page = [
    page1(),
    page2(),
    page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //build()메서드에 작성된 Container->Scaffold 위젯으로 수정
      appBar: AppBar(
        backgroundColor: Colors.white, //배경색을 흰색으로
        title: Text(
          '복잡한 UI',
          style: TextStyle(color: Colors.black), //글자를 검정색으로)
        ),
        centerTitle: true, //제목을 한가운데로
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: _page[_index],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          //탭을 클릭하면 onTap 이벤트가 동작하고 선택한 탭의 인덱스전달
          setState(() {
            _index = index; //선택된 탭의 인덱스로 _index를 변경
          });
        }, //onTap: (index)

        currentIndex: _index, //선택된 인덱스
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이용서비스',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: '내 정보',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  } //Wildget build
} //class _MyHomePageState extends State<MyHomePage>

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

//상단
  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('블랙'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('바이크'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('대리'),
                ],
              ),
            ],
          ),
          SizedBox(
            //  !!Sized   주의할 것
            //20만큼의 여백생성
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('택시'),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('블랙'),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('바이크'),
                ],
              ),
              Opacity(
                opacity: 0.0,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('대리'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

/* 
1. v 메뉴만들기
2. v 메뉴를 한줄에 4개 만들기
3. v 메뉴를 두줄로 만들기 +  사이 여백 만들기
4. v 메뉴 7개로 줄이기 -> 마지막을 Opacity로 감싸기
5. 클릭 가능하게 만들고 전체 여백 주기
*/

//중단
  Widget _buildMiddle() {
    return Text('Middle');
  }

//하단
  Widget _buildBottom() {
    return Text('Bottom');
  }
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '이용서비스', //이부분의 글자만 다르게 작성
        style: TextStyle(fontSize: 40),
      ),
    );
  } //Widget build(BuildContext context)
} //class page1 extends StatelessWidget

class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내 정보', //이부분의 글자만 다르게 작성
        style: TextStyle(fontSize: 40),
      ),
    );
  } //Widget build(BuildContext context)
} //class page1 extends StatelessWidget
