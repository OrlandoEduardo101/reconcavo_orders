import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class QuestionCreationClassificationComponentWeb extends StatefulWidget {
  const QuestionCreationClassificationComponentWeb({super.key});

  @override
  State<QuestionCreationClassificationComponentWeb> createState() =>
      _QuestionCreationClassificationComponentWebState();
}

class _QuestionCreationClassificationComponentWebState
    extends State<QuestionCreationClassificationComponentWeb> {
  final TextEditingController bancaController = TextEditingController();
  final TextEditingController anoController = TextEditingController();
  final TextEditingController cargoController = TextEditingController();
  final TextEditingController orgaoController = TextEditingController();
  final TextEditingController disciplinasController = TextEditingController();
  final TextEditingController assuntosController = TextEditingController();

  late List<String> resultList;
  bool dropdownAbertoBanca = false;
  bool dropdownAbertoAno = false;
  bool dropdownAbertoCargo = false;
  bool dropdownAbertoOrgao = false;
  bool dropdownAbertoDisciplinas = false;
  bool dropdownAbertoAssuntos = false;
  String selectedItem = '';

  void adicionarNovaBanca() {
    String novaBanca = bancaController.text;

    if (!listDropdownBanca.contains(novaBanca)) {
      setState(() {
        listDropdownBanca.add(novaBanca);
        bancaController.text;
        dropdownAbertoBanca = false;
      });
    } else {
      'Houve um erro ao abrir a lista';
    }
  }

  void adicionarNovoAno() {
    String novoAno = anoController.text;

    if (!listYears.contains(novoAno)) {
      setState(() {
        listYears.add(novoAno);
        anoController.text;
        dropdownAbertoAno = false;
      });
    } else {
      'Houve um erro ao abrir a lista';
    }
  }

  void adicionarNovoCargo() {
    String novoCargo = cargoController.text;

    if (!listCargos.contains(novoCargo)) {
      setState(() {
        listCargos.add(novoCargo);
        cargoController.text;
        dropdownAbertoCargo = false;
      });
    } else {
      'Houve um erro ao abrir a lista';
    }
  }

  void adicionarNovoOrgao() {
    String novoOrgao = orgaoController.text;

    if (!listOrgaos.contains(novoOrgao)) {
      setState(() {
        listOrgaos.add(novoOrgao);
        orgaoController.text;
        dropdownAbertoOrgao = false;
      });
    } else {
      'Houve um erro ao abrir a lista';
    }
  }

  void adicionarNovaDisciplina() {
    String novoDisciplina = disciplinasController.text;

    if (!listDisciplinas.contains(novoDisciplina)) {
      setState(() {
        listDisciplinas.add(novoDisciplina);
        disciplinasController.text;
        dropdownAbertoDisciplinas = false;
      });
    } else {
      'Houve um erro ao abrir a lista';
    }
  }

  void adicionarNovoAssunto() {
    String novoAssunto = assuntosController.text;

    if (!listAssuntos.contains(novoAssunto)) {
      setState(() {
        listAssuntos.add(novoAssunto);
        assuntosController.text;
        dropdownAbertoAssuntos = false;
      });
    } else {
      'Houve um erro ao abrir a lista';
    }
  }

  onSelected(String item) {
    setState(() => selectedItem = item);
  }

  @override
  void initState() {
    resultList = listDropdownBanca.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizedBox sizeDezesseis = SizedBox(height: size.height * 0.019);
    SizedBox sizeDez = SizedBox(height: size.height * 0.012);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: 'Banca',
          style: TextStyles.textMedium.copyWith(
            fontSize: 16,
            color: ColorsAppLight.neutral50,
          ),
        ),
        sizeDez,
        DropDownWidget(
          isDropdown: dropdownAbertoBanca,
          controller: bancaController,
          onTapTextField: () {
            setState(() {
              dropdownAbertoBanca = !dropdownAbertoBanca;
            });
          },
          onChangedTextField: (valor) {
            setState(() {
              valor.toString();
              resultList = listDropdownBanca
                  .where((opcao) =>
                      opcao.toLowerCase().contains(valor.toLowerCase()))
                  .toList();
            });
          },
          itemCount: resultList.length,
          itemBuilderWidget: (context, index) {
            final opcao = resultList[index];
            if (opcao
                .toLowerCase()
                .contains(bancaController.text.toLowerCase())) {
              return Container(
                margin: EdgeInsets.zero,
                width: double.infinity,
                color: opcao == selectedItem
                    ? ColorsAppLight.primary
                    : ColorsAppLight.white,
                child: ListTile(
                  title: Text(
                    opcao,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: opcao == selectedItem
                          ? ColorsAppLight.white
                          : ColorsAppLight.outline,
                    ),
                  ),
                  selected: opcao == selectedItem ? true : false,
                  onTap: () {
                    setState(() {
                      onSelected(opcao);
                      bancaController.text = opcao;
                    });
                  },
                ),
              );
            }
            return const SizedBox();
          },
          onTapAdd: () {
            setState(() {
              adicionarNovaBanca();
            });
          },
        ),
        sizeDezesseis,
        TextWidget(
          text: 'Ano',
          style: TextStyles.textMedium.copyWith(
            fontSize: 16,
            color: ColorsAppLight.neutral50,
          ),
        ),
        DropDownWidget(
          isDropdown: dropdownAbertoAno,
          controller: anoController,
          onTapTextField: () {
            setState(() {
              dropdownAbertoAno = !dropdownAbertoAno;
            });
          },
          onChangedTextField: (valor) {
            setState(() {
              valor.toString();
              resultList = listYears
                  .where((opcao) =>
                      opcao.toLowerCase().contains(valor.toLowerCase()))
                  .toList();
            });
          },
          itemCount: listYears.length,
          itemBuilderWidget: (context, index) {
            final opcao = listYears[index];
            if (opcao
                .toLowerCase()
                .contains(anoController.text.toLowerCase())) {
              return Container(
                margin: EdgeInsets.zero,
                width: double.infinity,
                color: opcao == selectedItem
                    ? ColorsAppLight.primary
                    : ColorsAppLight.white,
                child: ListTile(
                  title: Text(
                    opcao,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: opcao == selectedItem
                          ? ColorsAppLight.white
                          : ColorsAppLight.outline,
                    ),
                  ),
                  selected: opcao == selectedItem ? true : false,
                  onTap: () {
                    setState(() {
                      onSelected(opcao);
                      anoController.text = opcao;
                    });
                  },
                ),
              );
            }
            return const SizedBox();
          },
          onTapAdd: () {
            setState(() {
              adicionarNovoAno();
            });
          },
        ),
        sizeDez,
        TextWidget(
          text: 'Cargo',
          style: TextStyles.textMedium.copyWith(
            fontSize: 16,
            color: ColorsAppLight.neutral50,
          ),
        ),
        sizeDez,
        DropDownWidget(
          isDropdown: dropdownAbertoCargo,
          controller: cargoController,
          onTapTextField: () {
            setState(() {
              dropdownAbertoCargo = !dropdownAbertoCargo;
            });
          },
          onChangedTextField: (valor) {
            setState(() {
              valor.toString();
              resultList = listCargos
                  .where((opcao) =>
                      opcao.toLowerCase().contains(valor.toLowerCase()))
                  .toList();
            });
          },
          itemCount: listCargos.length,
          itemBuilderWidget: (context, index) {
            final opcao = listCargos[index];
            if (opcao
                .toLowerCase()
                .contains(cargoController.text.toLowerCase())) {
              return Container(
                margin: EdgeInsets.zero,
                width: double.infinity,
                color: opcao == selectedItem
                    ? ColorsAppLight.primary
                    : ColorsAppLight.white,
                child: ListTile(
                  title: Text(
                    opcao,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: opcao == selectedItem
                          ? ColorsAppLight.white
                          : ColorsAppLight.outline,
                    ),
                  ),
                  selected: opcao == selectedItem ? true : false,
                  onTap: () {
                    setState(() {
                      onSelected(opcao);
                      cargoController.text = opcao;
                    });
                  },
                ),
              );
            }
            return const SizedBox();
          },
          onTapAdd: () {
            setState(() {
              adicionarNovoCargo();
            });
          },
        ),
        sizeDezesseis,
        TextWidget(
          text: 'Órgão',
          style: TextStyles.textMedium.copyWith(
            fontSize: 16,
            color: ColorsAppLight.neutral50,
          ),
        ),
        sizeDez,
        DropDownWidget(
          isDropdown: dropdownAbertoOrgao,
          controller: orgaoController,
          onTapTextField: () {
            setState(() {
              dropdownAbertoOrgao = !dropdownAbertoOrgao;
            });
          },
          onChangedTextField: (valor) {
            setState(() {
              valor.toString();
              resultList = listOrgaos
                  .where((opcao) =>
                      opcao.toLowerCase().contains(valor.toLowerCase()))
                  .toList();
            });
          },
          itemCount: listOrgaos.length,
          itemBuilderWidget: (context, index) {
            final opcao = listOrgaos[index];
            if (opcao
                .toLowerCase()
                .contains(orgaoController.text.toLowerCase())) {
              return Container(
                margin: EdgeInsets.zero,
                width: double.infinity,
                color: opcao == selectedItem
                    ? ColorsAppLight.primary
                    : ColorsAppLight.white,
                child: ListTile(
                  title: Text(
                    opcao,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: opcao == selectedItem
                          ? ColorsAppLight.white
                          : ColorsAppLight.outline,
                    ),
                  ),
                  selected: opcao == selectedItem ? true : false,
                  onTap: () {
                    setState(() {
                      onSelected(opcao);
                      orgaoController.text = opcao;
                    });
                  },
                ),
              );
            }
            return const SizedBox();
          },
          onTapAdd: () {
            setState(() {
              adicionarNovoOrgao();
            });
          },
        ),
        sizeDezesseis,
        TextWidget(
          text: 'Disciplinas',
          style: TextStyles.textMedium.copyWith(
            fontSize: 16,
            color: ColorsAppLight.neutral50,
          ),
        ),
        sizeDez,
        DropDownWidget(
          isDropdown: dropdownAbertoDisciplinas,
          controller: disciplinasController,
          onTapTextField: () {
            setState(() {
              dropdownAbertoDisciplinas = !dropdownAbertoDisciplinas;
            });
          },
          onChangedTextField: (valor) {
            setState(() {
              valor.toString();
              resultList = listDisciplinas
                  .where((opcao) =>
                      opcao.toLowerCase().contains(valor.toLowerCase()))
                  .toList();
            });
          },
          itemCount: listDisciplinas.length,
          itemBuilderWidget: (context, index) {
            final opcao = listDisciplinas[index];
            if (opcao
                .toLowerCase()
                .contains(disciplinasController.text.toLowerCase())) {
              return Container(
                margin: EdgeInsets.zero,
                width: double.infinity,
                color: opcao == selectedItem
                    ? ColorsAppLight.primary
                    : ColorsAppLight.white,
                child: ListTile(
                  title: Text(
                    opcao,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: opcao == selectedItem
                          ? ColorsAppLight.white
                          : ColorsAppLight.outline,
                    ),
                  ),
                  selected: opcao == selectedItem ? true : false,
                  onTap: () {
                    setState(() {
                      onSelected(opcao);
                      disciplinasController.text = opcao;
                    });
                  },
                ),
              );
            }
            return const SizedBox();
          },
          onTapAdd: () {
            setState(() {
              adicionarNovaDisciplina();
            });
          },
        ),
        sizeDezesseis,
        TextWidget(
          text: 'Assuntos',
          style: TextStyles.textMedium.copyWith(
            fontSize: 16,
            color: ColorsAppLight.neutral50,
          ),
        ),
        sizeDez,
        DropDownWidget(
          isDropdown: dropdownAbertoAssuntos,
          controller: assuntosController,
          onTapTextField: () {
            setState(() {
              dropdownAbertoAssuntos = !dropdownAbertoAssuntos;
            });
          },
          onChangedTextField: (valor) {
            setState(() {
              valor.toString();
              resultList = listAssuntos
                  .where((opcao) =>
                      opcao.toLowerCase().contains(valor.toLowerCase()))
                  .toList();
            });
          },
          itemCount: listAssuntos.length,
          itemBuilderWidget: (context, index) {
            final opcao = listAssuntos[index];
            if (opcao
                .toLowerCase()
                .contains(assuntosController.text.toLowerCase())) {
              return Container(
                margin: EdgeInsets.zero,
                width: double.infinity,
                color: opcao == selectedItem
                    ? ColorsAppLight.primary
                    : ColorsAppLight.white,
                child: ListTile(
                  title: Text(
                    opcao,
                    style: TextStyles.textMedium.copyWith(
                      fontSize: 16,
                      color: opcao == selectedItem
                          ? ColorsAppLight.white
                          : ColorsAppLight.outline,
                    ),
                  ),
                  selected: opcao == selectedItem ? true : false,
                  onTap: () {
                    setState(() {
                      onSelected(opcao);
                      assuntosController.text = opcao;
                    });
                  },
                ),
              );
            }
            return const SizedBox();
          },
          onTapAdd: () {
            setState(() {
              adicionarNovoAssunto();
            });
          },
        ),
      ],
    );
  }
}
