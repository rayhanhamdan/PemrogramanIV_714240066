import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

import 'dart:io' as io;

class AdvancedForm extends StatefulWidget {
  const AdvancedForm({super.key});

  @override
  State<AdvancedForm> createState() => AdvancedFormState();
}

class AdvancedFormState extends State<AdvancedForm> {
  // Variabel untuk Date Picker
  DateTime _dueDate = DateTime.now();
  final DateTime currentDate = DateTime.now();

  // Variabel untuk Color Picker
  Color _currentColor = Colors.orange;

  // Variabel untuk File Picker & Image Preview
  String? _dataFile;
  io.File? _imageFile;

  // --- 1. DATE PICKER WIDGET ---
  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              child: const Text('Select'),
              onPressed: () async {
                final DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 5),
                );
                setState(() {
                  if (selectedDate != null) {
                    _dueDate = selectedDate;
                  }
                });
              },
            ),
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(_dueDate)),
      ],
    );
  }

  // --- 2. COLOR PICKER WIDGET ---
  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(height: 10),
        Container(height: 100, width: double.infinity, color: _currentColor),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: _currentColor),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BlockPicker(
                          pickerColor: _currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              _currentColor = color;
                            });
                          },
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Pick Color'),
          ),
        ),
      ],
    );
  }

  // --- 3. FILE PICKER & IMAGE PREVIEW WIDGET ---
  Future<void> _pickFile() async {
    final result = await FilePicker.pickFiles(type: FileType.any);

    if (!mounted || result.isEmpty) return;

    final file = result.single;
    final path = file.path;
    final extension = file.extension?.toLowerCase();

    final bool isImage =
        extension == 'jpg' || extension == 'jpeg' || extension == 'png';

    setState(() {
      _dataFile = file.name;
      _imageFile = isImage && path != null ? io.File(path) : null;
    });

    if (path != null) {
      OpenFile.open(path);
    }
  }

  Widget buildFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Pick File',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            onPressed: () {
              _pickFile();
            },
            child: const Text('Pick and Open File'),
          ),
        ),
        if (_dataFile != null) ...[
          const SizedBox(height: 10),
          Text('File Name: $_dataFile'),
        ],
        const SizedBox(height: 10),
        if (_imageFile != null)
          Image.file(
            _imageFile!,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Widget'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            buildDatePicker(context),
            const SizedBox(height: 20),
            buildColorPicker(context),
            const SizedBox(height: 20),
            buildFilePicker(context),
          ],
        ),
      ),
    );
  }
}
