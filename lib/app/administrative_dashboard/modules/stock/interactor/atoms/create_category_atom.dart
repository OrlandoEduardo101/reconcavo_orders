import 'package:asp/asp.dart';

import '../dto/create_category_dto.dart';

final createCategoryState = Atom<CreateCategoryDto>(CreateCategoryDto.empty());
final createCategoryResultState = Atom<bool>(false);
final createCategoryResultLoaging = Atom<bool>(false);