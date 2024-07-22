import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 57,
          padding: const EdgeInsets.only(left: 20, right: 136),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/previous 1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 22.89,
                            height: 22.89,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 22.89,
                                    height: 22.89,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFF9002),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.10),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x33FF9002),
                                          blurRadius: 3.05,
                                          offset: Offset(0, 0.76),
                                          spreadRadius: 0,
                                        ),
                                        BoxShadow(
                                          color: Color(0x33FF9002),
                                          blurRadius: 3.05,
                                          offset: Offset(0, 0.76),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 3.81,
                                  top: 3.81,
                                  child: Container(
                                    width: 15.26,
                                    height: 15.26,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-0.00, -1.00),
                                        end: Alignment(0, 1),
                                        colors: [
                                          Color(0xFFE48000),
                                          Color(0x00FF9002)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3.05),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5.34,
                                  top: 5.34,
                                  child: SizedBox(
                                    width: 12.21,
                                    height: 10.85,
                                    child: Text(
                                      'W',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.50,
                                        fontFamily: 'Ribeye',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 3.81),
                          Container(
                            width: 22.89,
                            height: 22.89,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 22.89,
                                    height: 22.89,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFF9002),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.10),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x33FF9002),
                                          blurRadius: 3.05,
                                          offset: Offset(0, 0.76),
                                          spreadRadius: 0,
                                        ),
                                        BoxShadow(
                                          color: Color(0x33FF9002),
                                          blurRadius: 3.05,
                                          offset: Offset(0, 0.76),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 3.81,
                                  top: 3.81,
                                  child: Container(
                                    width: 15.26,
                                    height: 15.26,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-0.00, -1.00),
                                        end: Alignment(0, 1),
                                        colors: [
                                          Color(0xFFE48000),
                                          Color(0x00FF9002)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3.05),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5.34,
                                  top: 5.34,
                                  child: SizedBox(
                                    width: 12.21,
                                    height: 10.85,
                                    child: Text(
                                      'O',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.50,
                                        fontFamily: 'Ribeye',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 3.81),
                          Container(
                            width: 22.89,
                            height: 22.89,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 22.89,
                                    height: 22.89,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFF9002),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.10),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x33FF9002),
                                          blurRadius: 3.05,
                                          offset: Offset(0, 0.76),
                                          spreadRadius: 0,
                                        ),
                                        BoxShadow(
                                          color: Color(0x33FF9002),
                                          blurRadius: 3.05,
                                          offset: Offset(0, 0.76),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 3.81,
                                  top: 3.81,
                                  child: Container(
                                    width: 15.26,
                                    height: 15.26,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-0.00, -1.00),
                                        end: Alignment(0, 1),
                                        colors: [
                                          Color(0xFFE48000),
                                          Color(0x00FF9002)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3.05),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5.34,
                                  top: 5.34,
                                  child: SizedBox(
                                    width: 12.21,
                                    height: 10.85,
                                    child: Text(
                                      'R',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.50,
                                        fontFamily: 'Ribeye',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 3.81),
                          Container(
                            width: 22.89,
                            height: 22.89,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 22.89,
                                    height: 22.89,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFF9002),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.10),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x33FF9002),
                                          blurRadius: 3.05,
                                          offset: Offset(0, 0.76),
                                          spreadRadius: 0,
                                        ),
                                        BoxShadow(
                                          color: Color(0x33FF9002),
                                          blurRadius: 3.05,
                                          offset: Offset(0, 0.76),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 3.81,
                                  top: 3.81,
                                  child: Container(
                                    width: 15.26,
                                    height: 15.26,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-0.00, -1.00),
                                        end: Alignment(0, 1),
                                        colors: [
                                          Color(0xFFE48000),
                                          Color(0x00FF9002)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3.05),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5.34,
                                  top: 5.34,
                                  child: SizedBox(
                                    width: 12.21,
                                    height: 10.85,
                                    child: Text(
                                      'D',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.50,
                                        fontFamily: 'Ribeye',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 67.52,
                      height: 18.39,
                      child: Text(
                        'GAME',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFE76A01),
                          fontSize: 12.06,
                          fontFamily: 'Ribeye',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
