import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class CreateRecipeScreen extends StatefulWidget {
  const CreateRecipeScreen({Key? key}) : super(key: key);

  @override
  _CreateRecipeScreenState createState() => _CreateRecipeScreenState();
}

class _CreateRecipeScreenState extends State<CreateRecipeScreen> {
  File? _image;

  List<IconData> _icons = [
    FontAwesomeIcons.coffee,
    FontAwesomeIcons.breadSlice,
    FontAwesomeIcons.apple,
    FontAwesomeIcons.cut,
    FontAwesomeIcons.cut,
    FontAwesomeIcons.apple,
    FontAwesomeIcons.cut,
  ];

  Widget _buildIcon(int index) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Icon(
        _icons[index],
        size: 25.0,
        color: Colors.grey,
      ),
    );
  }

  _showSelectImageDialog() {
    return Platform.isIOS ? _iosBottomSheet() : _androidDialog();
  }

  _iosBottomSheet() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text('Add Photo'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () => _handleImage(ImageSource.camera),
              child: Text('Take Photo'),
            ),
            CupertinoActionSheetAction(
              onPressed: () => _handleImage(ImageSource.gallery),
              child: Text('Choose From Gallery'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
        );
      },
    );
  }

  _androidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Add Photo'),
          children: [
            SimpleDialogOption(
              child: Text('Take Photo'),
              onPressed: () => _handleImage(ImageSource.camera),
            ),
            SimpleDialogOption(
              child: Text('Choose From Gallery'),
              onPressed: () => _handleImage(ImageSource.gallery),
            ),
            SimpleDialogOption(
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.redAccent),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  _handleImage(ImageSource source) async {
    Navigator.pop(context);
    PickedFile? imageFile =
        await ImagePicker.platform.pickImage(source: source);
    if (imageFile != null) {
      setState(() {
        _image = _image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Add a recipe',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.clear),
          color: Colors.black,
        ),
        actions: [
          TextButton(
            onPressed: null,
            child: Text('Next'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: _showSelectImageDialog,
              child: Container(
                height: width + 50,
                width: width,
                color: Colors.grey[300],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                  child: buildDashedBorder(
                    child: Container(
                      child: _image == null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt_outlined),
                                Text('Add a luscious food photo'),
                              ],
                            )
                          : Image(
                              image: FileImage(_image!),
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text('   Name of Recipe'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            buildContainer(
                Text: Text(
                  'Ingridients',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19.0),
                ),
                labelText: '+Add Ingredients'),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text('   Add one ingredient per line or paste your ingredient '
                    'list here'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            buildContainer(
                Text: Text(
                  'Directions',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19.0),
                ),
                labelText: '+Separate these ingredients into groups'),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text('   1'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            buildContainer(
                Text: Text(
                  'Notes',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19.0),
                ),
                labelText: '+Separate these Directions into groups'),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text('   Name of Recipe'),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 50.0,
              width: width,
              color: Colors.grey[300],
              child: Row(
                children: [
                  Text(
                    '  Recipe Information',
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 70.0, vertical: 0.0),
              child: Text(
                'Select the course type(s) that most closely match this '
                'recipe.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
                _buildIcon(3),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
                _buildIcon(3),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                SizedBox(width: 20.0,),
                _buildIcon(0),
                SizedBox(width: 40.0,),
                _buildIcon(1),
              ],
            ),
            SizedBox(height: 40.0,),
            Divider(),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Text('#Hashtags', textAlign: TextAlign.left,),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'e.g. #spice #dinner #myfavs',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Divider(),

          ],
        ),
      ),
    );
  }
}

Widget buildDashedBorder({required Widget child}) => DottedBorder(
      child: child,
      color: Colors.grey,
      padding: EdgeInsets.symmetric(horizontal: 100.0),
    );

Widget buildContainer({required String labelText, required Widget Text}) {
  return Container(
    height: 120.0,
    width: 500.0,
    color: Colors.grey[300],
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 5.0),
          child: buildDashedBorder(
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: Text,
            ),
          ],
        ),
      ],
    ),
  );
}
