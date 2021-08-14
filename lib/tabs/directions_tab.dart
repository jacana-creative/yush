import 'package:flutter/material.dart';

class DirectionsTab extends StatefulWidget {
  const DirectionsTab({Key? key}) : super(key: key);

  @override
  _DirectionsTabState createState() => _DirectionsTabState();
}

class _DirectionsTabState extends State<DirectionsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Step 1', style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 16.0),),
            Text(
                'Whisk vinegar, olive oil, garlic, tarragon, and thyme together in a small bowl. Place chicken thighs in a gallon-sized resealable plastic bag and pour vinegar mixture over the chicken; turn to coat. Seal bag and let marinate at room temperature for 1 hour.'),
            SizedBox(height: 10.0,),
            Text('Step 2', style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 16.0),),
            Text(
                'Preheat an outdoor grill for medium-high heat and lightly oil the grate. Remove chicken from marinade and discard marinade.'),

          ],
        ),
      ),
    );
  }
}
