import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AppImagePickerWidget extends StatefulWidget {
  final Function(File) onSelect;
  const AppImagePickerWidget({super.key, required this.onSelect});

  @override
  _AppImagePickerWidgetState createState() => _AppImagePickerWidgetState();
}

class _AppImagePickerWidgetState extends State<AppImagePickerWidget> {
  String? selectedImagePath;

  Future<void> _pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImagePath = image.path;
      });
      widget.onSelect(File(image.path));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No image selected.')),
      );
    }
  }

  void _removeImage() {
    setState(() {
      selectedImagePath = null;
    });
    widget.onSelect(File('')); // Pass an empty string or null to indicate removal
  }

  @override
  Widget build(BuildContext context) {
    return selectedImagePath == null
        ? GestureDetector(
            onTap: () => _pickImage(context),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Icon(Icons.add_a_photo, size: 30)),
            ),
          )
        : Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: FileImage(File(selectedImagePath!)),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: GestureDetector(
                  onTap: _removeImage,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
