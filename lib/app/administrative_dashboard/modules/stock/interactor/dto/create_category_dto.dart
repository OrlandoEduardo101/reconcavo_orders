// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:typed_data';

class CreateCategoryDto {
  final String name;
  final String description;
  final String slug;
  final String imageUrl;
  final Uint8List? imagebytes;

  CreateCategoryDto(
      {required this.name,
      required this.description,
      required this.slug,
      required this.imageUrl,
      required this.imagebytes});

  static CreateCategoryDto empty() =>
      CreateCategoryDto(name: '', description: '', slug: '', imageUrl: '', imagebytes: null);

  CreateCategoryDto copyWith({
    String? name,
    String? description,
    String? slug,
    String? imageUrl,
    Uint8List? imagebytes,
  }) {
    return CreateCategoryDto(
      name: name ?? this.name,
      description: description ?? this.description,
      slug: slug ?? this.slug,
      imageUrl: imageUrl ?? this.imageUrl,
      imagebytes: imagebytes ?? this.imagebytes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'slug': slug,
      'imageUrl': imageUrl,
    };
  }

  factory CreateCategoryDto.fromMap(Map<String, dynamic> map) {
    return CreateCategoryDto(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      slug: map['slug'] ?? '',
      imageUrl: map['imageUrl'] ?? '', 
      imagebytes: null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateCategoryDto.fromJson(String source) => CreateCategoryDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
