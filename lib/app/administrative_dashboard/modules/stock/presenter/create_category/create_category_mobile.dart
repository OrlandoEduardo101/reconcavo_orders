import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/services/image_picker/add_image_widget.dart';

class CreateCategoryMobile extends StatelessWidget {
  const CreateCategoryMobile({super.key, this.formWidgtes = const [], required this.formKey, required this.addImageWidget});

  final GlobalKey formKey;

  final AddImageWidget addImageWidget;

  final List<Widget> formWidgtes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Categoria'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: addImageWidget,
                  ),
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
