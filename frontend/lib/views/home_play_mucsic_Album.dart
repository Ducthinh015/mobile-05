import 'package:flutter/material.dart';
import 'home_screen.dart';


class HomePlayMucsicAlbumApp extends StatelessWidget {
  const HomePlayMucsicAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          HomePlayMusicAlbum(),
        ]),
      ),
    );
  }
}

class HomePlayMusicAlbum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 1311,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Positioned(
                left: 26,
                top: -38,
                child: Container(
                  width: 361,
                  height: 654,
                  decoration: ShapeDecoration(
                    color: const Color(0x1CD9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFF723F1C),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(200),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 140,
                top: 91,
                child: SizedBox(
                  width: 142,
                  height: 27,
                  child: Text(
                    'Billie Eilish',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFE9C7B1),
                      fontSize: 20,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 101,
                top: 53,
                child: SizedBox(
                  width: 220,
                  height: 38,
                  child: Text(
                    'WIILDFLOWER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 144,
                top: 571,
                child: Container(
                  width: 14,
                  height: 15,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF723F1C),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFF723F1C),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 66,
                top: 284,
                child: Container(
                  width: 287,
                  height: 287,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/287x287"),
                      fit: BoxFit.cover,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 656,
                child: SizedBox(
                  width: 305,
                  height: 41,
                  child: Text(
                    'The album of the song',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 9,
                top: 720,
                child: Container(
                  width: 378,
                  height: 122,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 262,
                        top: 0,
                        child: Container(
                          width: 116,
                          height: 116,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/116x116"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 262,
                        top: 0,
                        child: Container(
                          width: 116,
                          height: 116,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/116x116"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 528.41,
                        top: -2,
                        child: SizedBox(
                          width: 233.59,
                          height: 116,
                          child: Text(
                            'Fujii Kaze                             Love All Serve All',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 387,
                        top: -2,
                        child: Container(
                          width: 116,
                          height: 116,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/116x116"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 910.75,
                        top: -2,
                        child: SizedBox(
                          width: 238.25,
                          height: 116,
                          child: Text(
                            'Hayd                             Lost - Single',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 774,
                        top: -2,
                        child: Container(
                          width: 108.38,
                          height: 116,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/108x116"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1302.41,
                        top: 2.19,
                        child: SizedBox(
                          width: 233.59,
                          height: 113.13,
                          child: Text(
                            'Fujii Kaze                             Best of Fujii Kaze',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1161,
                        top: -2,
                        child: Container(
                          width: 121.51,
                          height: 121.51,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/122x122"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1686.77,
                        top: -2,
                        child: SizedBox(
                          width: 236.23,
                          height: 108,
                          child: Text(
                            'Gene Kelly                             MY STORY',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1548,
                        top: -2,
                        child: Container(
                          width: 122.88,
                          height: 116,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/123x116"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2075.10,
                        top: -2,
                        child: SizedBox(
                          width: 234.90,
                          height: 108,
                          child: Text(
                            'Lana Del Rey                             NFR! 2LP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1935,
                        top: -2,
                        child: Container(
                          width: 122.19,
                          height: 116,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/122x116"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 235.56,
                          height: 116,
                          child: Text(
                            'Billie Eilish                             HIT ME HARD',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 892,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/150x150"),
                      fit: BoxFit.cover,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 851,
                child: SizedBox(
                  width: 197,
                  height: 41,
                  child: Text(
                    'Singer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 1058,
                child: SizedBox(
                  width: 330,
                  height: 172,
                  child: Text(
                    'Billie Eilish (born 2001) is an American singer-songwriter who gained fame with "Ocean Eyes" in 2015. Her debut album When We All Fall Asleep, Where Do We Go? (2019) topped charts globally, featuring the hit "Bad Guy." She won an Academy Award for the James Bond theme "No Time to Die" and has had multiple top-ten singles.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 188,
                top: 144,
                child: Container(
                  width: 47,
                  height: 47,
                  decoration: ShapeDecoration(
                    color: const Color(0x00D9D9D9),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 2,
                        color: const Color(0xFF723F1C),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 199,
                top: 155,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x00723F1C),
                      ),
                    ),
                  ),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 127,
                top: 158,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x00723F1C),
                      ),
                    ),
                  ),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 293.40,
                top: 181.58,
                child: Container(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.13),
                  width: 23.97,
                  height: 24,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x00723F1C),
                      ),
                    ),
                  ),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 62,
                top: 232,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0x00723F1C),
                      ),
                    ),
                  ),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 326,
                top: 234,
                child: Container(width: 24, height: 24, child: Stack()),
              ),
              Positioned(
                left: 125,
                top: 232,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/26x26"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 269,
                top: 232,
                child: Container(
                  width: 26,
                  height: 26,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(),
                ),
              ),
              Positioned(
                left: 197,
                top: 233,
                child: Container(width: 24, height: 24, child: Stack()),
              ),
              Positioned(
                left: 8,
                top: 822,
                child: Container(
                  width: 400,
                  height: 84,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 47,
                        top: 69,
                        child: SizedBox(
                          width: 36,
                          height: 15,
                          child: Text(
                            'Home\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 325,
                        top: 38,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/35x35"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 235,
                        top: 38,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/35x35"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 137,
                        top: 38,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/35x35"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 33,
                        top: 0,
                        child: Container(
                          width: 61,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 47,
                        top: 13,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/35x35"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}