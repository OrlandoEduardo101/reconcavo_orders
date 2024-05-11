import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'image_picker_service.dart'; // Importe seu service de ImagePicker

// Defina um tipo de função como callback para retorno do path da imagem
typedef OnImagePicked = Function(Uint8List? imageBytes);

class AddImageWidget extends StatefulWidget {
  final Uint8List? imagebytes;
  final OnImagePicked onImagePicked;

  const AddImageWidget({super.key, required this.onImagePicked, this.imagebytes});

  @override
  _AddImageWidgetState createState() => _AddImageWidgetState();
}

class _AddImageWidgetState extends State<AddImageWidget> {
  Uint8List? _imageBytes;
  final IImagePickerService _imagePickerService = ImagePickerService();

  @override
  void initState() {
    super.initState();
    _imageBytes = widget.imagebytes;
  }

  void _showPickOptionsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Adicionar imagem'),
          children: <Widget>[
            SimpleDialogOption(
              child: const Text('Tirar uma foto'),
              onPressed: () async {
                await _pickImage(ImageSource.camera);
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: const Text('Carregar da galeria'),
              onPressed: () async {
                await _pickImage(ImageSource.gallery);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    // Navigator.of(context).pop(); // Fecha o diálogo
    Uint8List? imageBytes = source == ImageSource.camera
        ? await _imagePickerService.pickImageFromCamera()
        : await _imagePickerService.pickImageFromGallery();

    if (imageBytes != null) {
      setState(() {
        _imageBytes = imageBytes;
      });
      widget.onImagePicked(imageBytes); // Chama o callback com o path da imagem
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return InkWell(
      onTap: _showPickOptionsDialog,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: colorScheme.primary),
          borderRadius: BorderRadius.circular(10),
        ),
        child: _imageBytes == null
            ? Icon(Icons.add_a_photo, size: 80, color: colorScheme.primary)
            : ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.memory(
                  _imageBytes!,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
