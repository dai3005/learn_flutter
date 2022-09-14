import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        SectionHeader(),
        SectionFeature(),
      ]),
    );
  }
}

class SectionHeader extends StatefulWidget {
  const SectionHeader({super.key});

  @override
  State<SectionHeader> createState() => _SectionHeaderState();
}

class _SectionHeaderState extends State<SectionHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 15),
      height: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/anh.jpg"), fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(3), child: Icon(Icons.qr_code)),
          ),
          Expanded(
              flex: 9,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    Text("Nhập từ khoá tìm kiếm")
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class SectionFeature extends StatelessWidget {
  const SectionFeature({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
      color: Colors.white,
      height: 200,
      child: Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoDanhMuc.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Danh mục',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoNapThe.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Nạp thẻ',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoDaoTao.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Đào tạo',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoThanhToanNuoc.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Thanh toán nước',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoDatPhong.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Booking',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoMuaVeXemPhim.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Mua vé xem phim',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoDonNha.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Dọn dẹp',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoThanhToanDien.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Thanh toán điện',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoDatVe.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Đặt vé',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            Card(
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/icoInternet.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text(
                        'Internet',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
