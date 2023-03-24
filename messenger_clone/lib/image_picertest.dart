
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Image_picker extends StatefulWidget {
  const Image_picker({Key? key}) : super(key: key);

  @override
  _Image_pickerState createState() => _Image_pickerState();
}

class _Image_pickerState extends State<Image_picker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Picker Example"),
        ),
        body: Center(
          child: Column(
            children: [
              MaterialButton(
                  color: Colors.blue,
                  child: const Text(
                      "Pick Image from Gallery",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold
                      )
                  ),
                  onPressed: () {
                    XFile? image;
                    Future pickImage() async {
                      try {
                        var image = await ImagePicker().pickImage(source: ImageSource.gallery);
                        if(image == null) return;
                        final imageTemp = XFile(image.path);
                        setState(() => image = imageTemp);
                      } on PlatformException catch(e) {
                        print('Failed to pick image: $e');
                      }
                    }
                  }
              ),
              MaterialButton(
                  color: Colors.blue,
                  child: const Text(
                      "Pick Image from Camera",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold
                      )
                  ),
                  onPressed: () {
                  }
              ),
            ],
          ),
        )
    );
  }
}
