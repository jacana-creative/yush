import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_counter/flutter_counter.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:provider/provider.dart';
import 'package:yush/components/round_icon_button.dart';
import 'package:yush/models/shopping_data.dart';
import 'package:yush/screens/add_shopping_list_screen.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({Key? key}) : super(key: key);

  @override
  _ShoppingListScreenState createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  dynamic _checked = false;
  num _counter = 0;
  num _defaultValue = 1;
  TextStyle _textStyle = TextStyle(decoration: TextDecoration.none);
  num _counter1 = 0;
  num _defaultValue1 = 1;
  TextStyle _textStyle1 = TextStyle(decoration: TextDecoration.none);
  num _counter2 = 0;
  num _defaultValue2 = 1;
  TextStyle _textStyle2 = TextStyle(decoration: TextDecoration.none);
  num _counter3 = 0;
  num _defaultValue3 = 1;
  TextStyle _textStyle3 = TextStyle(decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Shopping List',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.thLarge),
            ),
            PopupMenuButton(
              icon: Icon(FontAwesomeIcons.ellipsisV),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.retweet),
                    title: Text('Sort'),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.checkSquare),
                    title: Text('Check All'),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.square),
                    title: Text('Uncheck All'),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.trash),
                    title: Text('Delete All'),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.share),
                    title: Text('Share'),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[300],
                  height: 40.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              height: 3.0,
                            ),
                            hintText: 'Add new item',
                            focusedBorder: OutlineInputBorder(
                                // borderSide: BorderSide(
                                //     color: Colors.greenAccent, width: 5.0),
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(100.0, 40.0),
                          backgroundColor: Colors.orangeAccent,
                        ),
                        onPressed: () => null,
                        child: Text(
                          'Add',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Items:',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '7   ',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            if(_textStyle == _textStyle){
                              _textStyle = TextStyle(decoration: TextDecoration.lineThrough);
                            }
                            else{_textStyle = TextStyle(decoration:
                            TextDecoration.none);}
                          });
                        },
                        leading: Checkbox(
                          value: timeDilation != 1.0,
                          onChanged: (bool? value) {
                            setState(() {
                              timeDilation = value! ? 2.0 : 1.0;
                            });
                          },
                        ),
                        title: Text('Baguette', style: _textStyle),
                        subtitle: Text('Bread & Pastries', style: _textStyle),
                      ),
                    ),
                    Text('$_counter'),
                    Counter(
                      initialValue: _defaultValue,
                      minValue: 0,
                      maxValue: 100,
                      step: 1,
                      decimalPlaces: 0,
                      onChanged: (value) {
                        // get the latest value from here
                        setState(() {
                          _defaultValue = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            if(_textStyle1 == _textStyle1){
                              _textStyle1 = TextStyle(decoration:
                              TextDecoration.lineThrough);
                            }
                            else{_textStyle1 = TextStyle(decoration:
                            TextDecoration.none);}
                          });
                        },
                        leading: Checkbox(
                          value: timeDilation != 1.0,
                          onChanged: (bool? value) {
                            setState(() {
                              timeDilation = value! ? 2.0 : 1.0;
                            });
                          },
                        ),
                        title: Text('Baguette', style: _textStyle),
                        subtitle: Text('Bread & Pastries', style: _textStyle),
                      ),
                    ),
                    Text('$_counter1'),
                    Counter(
                      initialValue: _defaultValue1,
                      minValue: 0,
                      maxValue: 100,
                      step: 1,
                      decimalPlaces: 0,
                      onChanged: (value) {
                        // get the latest value from here
                        setState(() {
                          _defaultValue1 = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            if(_textStyle2 == _textStyle2){
                              _textStyle2 = TextStyle(decoration:
                              TextDecoration.lineThrough);
                            }
                            else{_textStyle2 = TextStyle(decoration:
                            TextDecoration.none);}
                          });
                        },
                        leading: Checkbox(
                          value: timeDilation != 1.0,
                          onChanged: (bool? value) {
                            setState(() {
                              timeDilation = value! ? 2.0 : 1.0;
                            });
                          },
                        ),
                        title: Text('Baguette', style: _textStyle2),
                        subtitle: Text('Bread & Pastries', style: _textStyle2),
                      ),
                    ),
                    Text('$_counter2'),
                    Counter(
                      initialValue: _defaultValue2,
                      minValue: 0,
                      maxValue: 100,
                      step: 1,
                      decimalPlaces: 0,
                      onChanged: (value) {
                        // get the latest value from here
                        setState(() {
                          _defaultValue2 = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            if(_textStyle3 == _textStyle3){
                              _textStyle3 = TextStyle(decoration:
                              TextDecoration.lineThrough);
                            }
                            else{_textStyle3 = TextStyle(decoration:
                            TextDecoration.none);}
                          });
                        },
                        leading: Checkbox(
                          value: timeDilation != 1.0,
                          onChanged: (bool? value) {
                            setState(() {
                              timeDilation = value! ? 2.0 : 1.0;
                            });
                          },
                        ),
                        title: Text('Baguette', style: _textStyle3),
                        subtitle: Text('Bread & Pastries', style: _textStyle3),
                      ),
                    ),
                    Text('$_counter3'),
                    Counter(
                      initialValue: _defaultValue3,
                      minValue: 0,
                      maxValue: 100,
                      step: 1,
                      decimalPlaces: 0,
                      onChanged: (value) {
                        // get the latest value from here
                        setState(() {
                          _defaultValue3 = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            if(_textStyle == _textStyle){
                              _textStyle = TextStyle(decoration: TextDecoration.lineThrough);
                            }
                            else{_textStyle = TextStyle(decoration:
                            TextDecoration.none);}
                          });
                        },
                        leading: Checkbox(
                          value: timeDilation != 1.0,
                          onChanged: (bool? value) {
                            setState(() {
                              timeDilation = value! ? 2.0 : 1.0;
                            });
                          },
                        ),
                        title: Text('Baguette', style: _textStyle),
                        subtitle: Text('Bread & Pastries', style: _textStyle),
                      ),
                    ),
                    Text('$_counter'),
                    Counter(
                      initialValue: _defaultValue,
                      minValue: 0,
                      maxValue: 100,
                      step: 1,
                      decimalPlaces: 0,
                      onChanged: (value) {
                        // get the latest value from here
                        setState(() {
                          _defaultValue = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            if(_textStyle == _textStyle){
                              _textStyle = TextStyle(decoration: TextDecoration.lineThrough);
                            }
                            else{_textStyle = TextStyle(decoration:
                            TextDecoration.none);}
                          });
                        },
                        leading: Checkbox(
                          value: timeDilation != 1.0,
                          onChanged: (bool? value) {
                            setState(() {
                              timeDilation = value! ? 2.0 : 1.0;
                            });
                          },
                        ),
                        title: Text('Baguette', style: _textStyle),
                        subtitle: Text('Bread & Pastries', style: _textStyle),
                      ),
                    ),
                    Text('$_counter'),
                    Counter(
                      initialValue: _defaultValue,
                      minValue: 0,
                      maxValue: 100,
                      step: 1,
                      decimalPlaces: 0,
                      onChanged: (value) {
                        // get the latest value from here
                        setState(() {
                          _defaultValue = value;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),

                // CheckboxListTile(
                //   title: Text('Baguette'),
                //     subtitle: Text('Bread & Pastries'),
                //     controlAffinity: ListTileControlAffinity.leading,
                //     value: timeDilation != 1.0,
                //     onChanged: (bool? value) {
                //       setState(() {
                //         timeDilation = value! ? 2.0 : 1.0;
                //       });
                //     },
                //   secondary: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       RoundIconButton(
                //         icon: Icons.remove,
                //       ),
                //       RoundIconButton(
                //         icon: Icons.add,
                //       ),
                //     ],
                //   ),
                // ),
                // Divider(thickness: 1,),
                // CheckboxListTile(
                //   title: Text('Pears'),
                //   subtitle: Text('fruits'),
                //   controlAffinity: ListTileControlAffinity.leading,
                //   value: timeDilation != 1.0,
                //   onChanged: (bool? value) {
                //     setState(() {
                //       timeDilation = value! ? 2.0 : 1.0;
                //     });
                //   },
                // ),
                // Divider(thickness: 1,),
                // CheckboxListTile(
                //   title: Text('Apricots'),
                //   subtitle: Text('Fruits'),
                //   controlAffinity: ListTileControlAffinity.leading,
                //   value: timeDilation != 1.0,
                //   onChanged: (bool? value) {
                //     setState(() {
                //       timeDilation = value! ? 2.0 : 1.0;
                //     });
                //   },
                // ),
                // Divider(thickness: 1,),
                // CheckboxListTile(
                //   title: Text('Cornflakes'),
                //   subtitle: Text('Grain products'),
                //   controlAffinity: ListTileControlAffinity.leading,
                //   value: timeDilation != 1.0,
                //   onChanged: (bool? value) {
                //     setState(() {
                //       timeDilation = value! ? 2.0 : 1.0;
                //     });
                //   },
                // ),
                // Divider(thickness: 1,),
                // CheckboxListTile(
                //   title: Text('Gnocci'),
                //   subtitle: Text('Grain products'),
                //   controlAffinity: ListTileControlAffinity.leading,
                //   value: timeDilation != 1.0,
                //   onChanged: (bool? value) {
                //     setState(() {
                //       timeDilation = value! ? 2.0 : 1.0;
                //     });
                //   },
                // ),
                // Divider(thickness: 1,),
              ],
            ),
          ),
        ));
  }
}

class RoundCheckbox extends StatelessWidget {
  const RoundCheckbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
