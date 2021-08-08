import 'package:flutter/material.dart';

//앱 시작부분
void main() {
  runApp(MyApp());
}

//시작클래스 . 머티리얼 디자인 앱 생성
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

  @override
  Widget build(BuildContext context) {
    return Container();
  } //Wildget build
} //class _MyHomePageState extends State<MyHomePage>