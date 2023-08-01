import 'package:flutter/material.dart';

import '../utils/constants/images_constants_from_asset.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*  drawer: Drawer(
        backgroundColor: Colors.white,
      ),*/
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black12,
        actions: [

          TextFormField()
        ],
      ),*/
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        handbergerIcon,
                        height: 20,
                        width: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(100),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(100),
                                      borderSide:
                                          BorderSide(color: Colors.grey[400]!)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(100),
                                      borderSide:
                                          BorderSide(color: Colors.grey[400]!)),
                                  hintText: "0",
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              margin: EdgeInsets.only(left: 5),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      child: Image.asset(cartIcon)),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xff0A6AA1),
                                            Color(0xff2BA6C4),
                                          ],
                                        )),
                                    child: const Center(
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1.0,
                  margin: const EdgeInsets.only(bottom: 25),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        blurRadius: 5.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: const Offset(
                          0.0, // Move to right 5  horizontally
                          15.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          main_bannerIcon,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (cnx, index) {
                              return index == 0
                                  ? Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    )
                                  : Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          border: Border.all(
                                              width: 1, color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    );
                            }),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (cnx, index) {
                              return index == 0
                                  ? Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    )
                                  : Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    );
                            }),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 100,
                      itemBuilder: (cnx, index) {
                        return Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.only(right: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              gradient: const LinearGradient(colors: [
                                Color(0x3a0A6AA1),
                                Color(0x3a2BA6C4)
                              ])),
                          child: Center(
                            child: Image.asset(
                              groupiconIcon,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
