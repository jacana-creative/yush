import 'package:flutter/material.dart';

class CreateMealPlanScreen extends StatefulWidget {
  const CreateMealPlanScreen({Key? key}) : super(key: key);

  @override
  _CreateMealPlanScreenState createState() => _CreateMealPlanScreenState();
}

class _CreateMealPlanScreenState extends State<CreateMealPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Create a Meal Plan',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons
            .clear),
          color:
          Colors.black,),
        actions: [
          TextButton(onPressed: (){}, child: Text('Save'),)
        ],
      ),
    );
  }
}
