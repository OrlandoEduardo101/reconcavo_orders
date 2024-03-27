import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:routefly/routefly.dart';

import '../design_system.dart';

class ModalImage extends StatefulWidget {
  const ModalImage({super.key});

  @override
  State<ModalImage> createState() => _ModalImageState();
}

class _ModalImageState extends State<ModalImage> {
  final imagePicker = ImagePicker();
  File? imageFile;

  pick(ImageSource source) async {
    final pickedFile = await imagePicker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Center(
                child: Icon(
                  Icons.image_search,
                  color: Colors.grey[500],
                ),
              ),
            ),
            title: Text(
              'Galeria',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            onTap: () {
              Routefly.pop(context);
              // Buscar imagem da galeria
              pick(ImageSource.gallery);
            },
          ),

          /// TODO: VER SE VAI SER USADO PQ O NAO TERÁ VERSÃO APP
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Center(
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.grey[500],
                ),
              ),
            ),
            title: Text(
              'Câmera',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            onTap: () {
              Routefly.pop(context);
              // Fazer foto da câmera
              pick(ImageSource.camera);
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Center(
                child: Icon(
                  Icons.delete_outline_outlined,
                  color: Colors.grey[500],
                ),
              ),
            ),
            title: Text(
              'Remover',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            onTap: () {
              Routefly.pop(context);
              // Tornar a foto null
              setState(() {
                imageFile = null;
              });
            },
          ),
        ],
      ),
    );
  }
}
