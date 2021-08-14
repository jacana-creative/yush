import 'package:flutter/material.dart';

class AddPlanInfoTab extends StatefulWidget {
  const AddPlanInfoTab({Key? key}) : super(key: key);

  @override
  _AddPlanInfoTabState createState() => _AddPlanInfoTabState();
}

class _AddPlanInfoTabState extends State<AddPlanInfoTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 3.0,),
            Text('Select tags b/w breakfast, lunch, dinner'),
            TextButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(80.0, 10.0),
                backgroundColor: Colors.green,
              ),
              onPressed: null,
              child: Text('Next', style: TextStyle(color: Colors.white),),),
            SizedBox(width: 3.0,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0,),
              Text('Plan Information',  style: TextStyle(
                  fontSize: 22.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Text('Fill in these fields to create the basics of your meal '
                  'plan.'),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Title of Meal Plan', style: TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.bold),),
                  Text('0/50'),
                ],
              ),
              SizedBox(height: 5.0,),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: 'Add new item',
                  focusedBorder: OutlineInputBorder(),
                  border: InputBorder.none,
                  // enabledBorder: ,
                ),
              ),
              // SizedBox(height: 15.0,),
              // Text('Length of Meal Plan', style: TextStyle(
              //     fontSize: 16.0, fontWeight: FontWeight.bold),),
              // SizedBox(height: 5.0,),
              // ListTile(
              //   tileColor: Colors.grey[300],
              //   title: DropdownButton<String>(
              //     hint: Text('1 week'),
              //     items: <String>[
              //       '1 week',
              //       '2 weeks',
              //       '3 weeks',
              //       '4 weeks',
              //     ].map((String value) {
              //       return DropdownMenuItem<String>(
              //         value: value,
              //         child: new Text(value),
              //       );
              //     }).toList(),
              //     onChanged: (_) {},
              //   ),
              //   // trailing: Icon(Icons.keyboard_arrow_down_rounded),
              // ),
              SizedBox(height: 15.0,),
              Text('Meal Plan Guide',  style: TextStyle(
                  fontSize: 22.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Text('The information below will be accessible to those who use'
                  ' this plan. By filling in these fields you can give tips '
                  'and notes for you or anyone who cooks from this plan to '
                  'remember.'),
              SizedBox(height: 15.0,),
              Text('Meal Plan General Information', style: TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Container(
                color: Colors.grey[300],
                height: 200.0,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                  child: Text(
                    'Add a short description of your plan, including what kinds'
                        ' of recipes are included, and what lifestyle outcomes '
                        'you expect from using the plan'
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
