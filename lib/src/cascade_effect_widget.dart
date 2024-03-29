///
/// Float Action Button - cascade effect
///

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class CascadeEffectWidget extends StatefulWidget {
  @override
  CascadeEffectWidgetState createState() => new CascadeEffectWidgetState();
}

class CascadeEffectWidgetState extends State<CascadeEffectWidget> with TickerProviderStateMixin {
  int _angle = 200;
  bool _isRotated = true;

  AnimationController _controller;
  Animation<double> _animation;
  Animation<double> _animation2;
  Animation<double> _animation3;
  Animation<double> _animation4;

  @override
  void initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.0, 1.0, curve: Curves.linear),
    );

    _animation2 = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.25, 1.0, curve: Curves.linear),
    );

    _animation3 = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.50, 1.0, curve: Curves.linear),
    );

    _animation4 = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.75, 1.0, curve: Curves.linear),
    );


    _controller.reverse();
    super.initState();
  }

  void _rotate(){
    setState((){
      if(_isRotated) {
        _angle = 45;
        _isRotated = false;
        _controller.forward();
      } else {
        _angle = 200;
        _isRotated = true;
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
            children: <Widget>[
              new Positioned(
                  bottom: 256.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[

                        new ScaleTransition(
                          scale: _animation4,
                          alignment: FractionalOffset.center,
                          child: new Container(
                            margin: new EdgeInsets.only(right: 16.0),
                            child: new Text(
                              'Action 4',
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF9E9E9E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        new ScaleTransition(
                          scale: _animation4,
                          alignment: FractionalOffset.center,
                          child: new Material(
                              color: new Color(0xFFAB47BC),
                              type: MaterialType.circle,
                              elevation: 6.0,
                              child: new GestureDetector(
                                child: new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: new InkWell(
                                      onTap: (){
                                        if(_angle == 45.0){
                                          print("Action 4");
                                        }
                                      },
                                      child: new Center(
                                        child: new Icon(
                                          Icons.add,
                                          color: new Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    )
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              new Positioned(
                  bottom: 200.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[

                        new ScaleTransition(
                          scale: _animation3,
                          alignment: FractionalOffset.center,
                          child: new Container(
                            margin: new EdgeInsets.only(right: 16.0),
                            child: new Text(
                              'Action 3',
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF9E9E9E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        new ScaleTransition(
                          scale: _animation3,
                          alignment: FractionalOffset.center,
                          child: new Material(
                              color: new Color(0xFF9E9E9E),
                              type: MaterialType.circle,
                              elevation: 6.0,
                              child: new GestureDetector(
                                child: new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: new InkWell(
                                      onTap: (){
                                        if(_angle == 45.0){
                                          print("Action 3");
                                        }
                                      },
                                      child: new Center(
                                        child: new Icon(
                                          Icons.add,
                                          color: new Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    )
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              new Positioned(
                  bottom: 144.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[
                        new ScaleTransition(
                          scale: _animation2,
                          alignment: FractionalOffset.center,
                          child: new Container(
                            margin: new EdgeInsets.only(right: 16.0),
                            child: new Text(
                              'Action 2',
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF9E9E9E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        new ScaleTransition(
                          scale: _animation2,
                          alignment: FractionalOffset.center,
                          child: new Material(
                              color: new Color(0xFF00BFA5),
                              type: MaterialType.circle,
                              elevation: 6.0,
                              child: new GestureDetector(
                                child: new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: new InkWell(
                                      onTap: (){
                                        if(_angle == 45.0){
                                          print("Action 2");
                                        }
                                      },
                                      child: new Center(
                                        child: new Icon(
                                          Icons.add,
                                          color: new Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    )
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              new Positioned(
                  bottom: 88.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[
                        new ScaleTransition(
                          scale: _animation,
                          alignment: FractionalOffset.center,
                          child: new Container(
                            margin: new EdgeInsets.only(right: 16.0),
                            child: new Text(
                              'Action 1',
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF9E9E9E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        new ScaleTransition(
                          scale: _animation,
                          alignment: FractionalOffset.center,
                          child: new Material(
                              color: new Color(0xFFE57373),
                              type: MaterialType.circle,
                              elevation: 6.0,
                              child: new GestureDetector(
                                child: new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: new InkWell(
                                      onTap: (){
                                        if(_angle == 45.0){
                                          print("Action 1");
                                        }
                                      },
                                      child: new Center(
                                        child: new Icon(
                                          Icons.add,
                                          color: new Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    )
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              new Positioned(
                bottom: 16.0,
                right: 16.0,
                child: new Material(
                    color: new Color(0xFFE57373),
                    type: MaterialType.circle,
                    elevation: 6.0,
                    child: new GestureDetector(
                      child: new Container(
                          width: 56.0,
                          height: 56.00,
                          child: new InkWell(
                            onTap: _rotate,
                            child: new Center(
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(_angle / 360),
                                  child: new Icon(
                                    Icons.add,
                                    color: new Color(0xFFFFFFFF),
                                  ),
                                )
                            ),
                          )
                      ),
                    )
                ),
              ),
            ]
        )
    );
  }
}