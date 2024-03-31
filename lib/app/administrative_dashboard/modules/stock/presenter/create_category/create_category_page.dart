import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:reconcavo_orders/core/design_system/utils.dart';
import 'package:reconcavo_orders/core/design_system/widgets/buttons/button_widget.dart';
import 'package:reconcavo_orders/core/extensions/size_extension.dart';
import 'package:reconcavo_orders/core/services/image_picker/add_image_widget.dart';

import 'create_category_desktop.dart';
import 'create_category_mobile.dart';

class CreateCategoryPage extends StatefulWidget {
  const CreateCategoryPage({super.key});

  @override
  State<CreateCategoryPage> createState() => _CreateCategoryPageState();
}

class _CreateCategoryPageState extends State<CreateCategoryPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _description = '';
  String? _slug;
  String? _imageUrl;

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // final response = await Supabase.instance.client
      //     .from('categories')
      //     .insert({
      //       'name': _name,
      //       'description': _description,
      //       'slug': _slug,
      //       'image_url': _imageUrl,
      //     })
      //     .execute();

      // if (response.error != null) {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text('Erro ao adicionar categoria: ${response.error!.message}')),
      //   );
      // } else {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text('Categoria adicionada com sucesso')),
      //   );
      // }
    }
  }

  final addImageWidget = AddImageWidget(
      key: const Key('add-image-categories-widget'),
      onImagePicked: (Uint8List? imagePath) {
        // _imageUrl = imagePath;
        log("Imagem selecionada: $imagePath");
        // Aqui você pode fazer algo com o caminho da imagem, como armazená-lo ou usá-lo em outra parte do seu app
      });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.isMobile;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final formWidgtes = <Widget>[
      TextFormField(
        decoration: const InputDecoration(labelText: 'Nome'),
        onSaved: (value) => _name = value!,
        validator: (value) {
          _slug = removeDiacritics(value ?? '').replaceAll(' ', '-');
          return value?.isEmpty ?? true ? 'Este campo é obrigatório' : null;
        },
      ),
      const SizedBox(
        height: 30,
      ),
      TextFormField(
        decoration: const InputDecoration(labelText: 'Descrição'),
        onSaved: (value) => _description = value ?? '',
      ),
      // TextFormField(
      //   decoration: const InputDecoration(labelText: 'Slug'),
      //   onSaved: (value) => _slug = value,
      // ),
      // TextFormField(
      //   decoration: const InputDecoration(labelText: 'URL da Imagem'),
      //   onSaved: (value) => _imageUrl = value,
      // ),
      const SizedBox(
        height: 60,
      ),
      Center(
        child: ButtonWidget(
          title: 'Adicionar Categoria',
          style: TextStyle(color: colorScheme.onSurface, fontSize: 22),
          borderSide: colorScheme.onSurface,
          width: 300,
          colorBackground: colorScheme.surface,
          radiusCircular: 12,
          onPressed: _submitForm,
        ),
      ),
    ];
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        log(didPop.toString());
      },
      child: Scaffold(
        body: isMobile
            ? CreateCategoryMobile(
                formWidgtes: formWidgtes,
                formKey: _formKey,
                addImageWidget: addImageWidget,
              )
            : CreateCategoryDesktop(
                formWidgtes: formWidgtes,
                formKey: _formKey,
                addImageWidget: addImageWidget,
              ),
      ),
    );
  }
}
