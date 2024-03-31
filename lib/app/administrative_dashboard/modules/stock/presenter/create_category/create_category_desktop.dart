import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:reconcavo_orders/core/services/image_picker/add_image_widget.dart';

class CreateCategoryDesktop extends StatelessWidget {
  const CreateCategoryDesktop({super.key, this.formWidgtes = const [], required this.formKey, required this.addImageWidget});

  final GlobalKey formKey;
  final AddImageWidget addImageWidget;


  final List<Widget> formWidgtes;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Adicionar Categoria'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                Center(
                  child: addImageWidget,
                ),
                ...formWidgtes
              ],
            ),
          ),
        ),
      ),
    );
  }
}
