import 'dart:ui';
import 'package:reconcavo_orders/core/models/user_model.dart';
import 'package:routefly/routefly.dart';
import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';
import '../widgets/buttons/square_button.dart';
import '../widgets/dialogs/dialog_with_button_widget.dart';

class DialogViewProfileComponent extends StatefulWidget {
  final UserModel users;
  final double height;
  final double width;
  final void Function()? onPressedDeletUser;
  final void Function()? onPressedConfirmBlockUser;
  final String titleState;
  final String titleSelected;
  final Color colorBlock;
  final Color colorUnblock;

  const DialogViewProfileComponent({
    Key? key,
    required this.users,
    required this.height,
    required this.width,
    this.onPressedDeletUser,
    this.onPressedConfirmBlockUser,
    this.titleState = 'Bloquear usuário',
    this.titleSelected = 'Desbloquear usuário',
    this.colorBlock = ColorsAppLight.warning,
    this.colorUnblock = ColorsAppLight.save,
  }) : super(key: key);

  @override
  State<DialogViewProfileComponent> createState() =>
      _DialogViewProfileComponentState();
}

class _DialogViewProfileComponentState
    extends State<DialogViewProfileComponent> {
  bool isReset = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  bool _isEditMail = false;
  bool _isEditCpf = false;
  late List<UserModel> newUserList;

  @override
  void initState() {
    newUserList = userListData.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Center(
        child: Material(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              color: ColorsAppLight.white,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                shadowTres,
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.025,
                right: size.width * 0.025,
                top: size.height * 0.037,
                bottom: size.height * 0.037,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Ver perfil',
                          style: TextStyles.textMedium.copyWith(
                            fontSize: 18,
                            color: ColorsAppLight.neutral25,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Routefly.pop(context);
                            },
                            icon: const Icon(Icons.close,
                                size: 24, color: ColorsAppLight.neutral50)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 88,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Container(
                              height: 88,
                              width: 88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image.asset(
                                widget.users.image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: size.width * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: 'Nome',
                                style: TextStyles.textMedium.copyWith(
                                    fontSize: 14,
                                    color: ColorsAppLight.neutral50),
                              ),
                              SizedBox(height: size.height * 0.01),
                              TextWidget(
                                text: widget.users.name,
                                maxLines: 1,
                                style: TextStyles.textMedium.copyWith(
                                  fontSize: 16,
                                  color: ColorsAppLight.neutral40,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextWidget(
                                text: 'Status',
                                style: TextStyles.textMedium.copyWith(
                                    fontSize: 14,
                                    color: ColorsAppLight.neutral50),
                              ),
                              SizedBox(height: size.height * 0.01),
                              ButtonWidget(
                                height: size.height * 0.03,
                                width: 92,
                                title: widget.users.status,
                                style: TextStyles.textRegular.copyWith(
                                  fontSize: 12,
                                  color: widget.users.status == 'Usuário Ativo'
                                      ? ColorsAppLight.onCorrect
                                      : widget.users.status == 'Bloqueado'
                                          ? ColorsAppLight.warming
                                          : ColorsAppLight.neutral50,
                                ),
                                borderSide:
                                    widget.users.status == 'Usuário Ativo'
                                        ? ColorsAppLight.onCorrect
                                        : widget.users.status == 'Bloqueado'
                                            ? ColorsAppLight.warming
                                            : ColorsAppLight.neutral50,
                                colorBackground:
                                    widget.users.status == 'Usuário Ativo'
                                        ? ColorsAppLight.correct
                                        : widget.users.status == 'Bloqueado'
                                            ? ColorsAppLight.warning80
                                            : ColorsAppLight.neutral80,
                                radiusCircular: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextWidget(
                      text: 'E-mail',
                      style: TextStyles.textMedium.copyWith(
                          fontSize: 14, color: ColorsAppLight.neutral50),
                    ),
                    SizedBox(height: size.height * 0.009),
                    if (_isEditMail == false)
                      Row(
                        children: [
                          TextWidget(
                            text: widget.users.email,
                            maxLines: 1,
                            style: TextStyles.textRegular.copyWith(
                              fontSize: 16,
                              color: ColorsAppLight.neutral40,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Spacer(),
                          IconButtonWidget(
                            height: size.height * 0.05,
                            width: 105,
                            colorBackground: ColorsAppLight.white,
                            boxShadow: [
                              shadowTres,
                            ],
                            isIcon: const Icon(
                              IconsApp.pencil,
                              color: ColorsAppLight.neutral70,
                              size: 18,
                            ),
                            outlineColor: ColorsAppLight.neutral70,
                            title: 'Editar',
                            style: TextStyles.textMedium.copyWith(
                              color: ColorsAppLight.neutral70,
                              fontSize: 14,
                            ),
                            onPressed: () {
                              setState(() {
                                _isEditMail = !_isEditMail;
                              });
                            },
                          ),
                        ],
                      ),
                    if (_isEditMail == true)
                      Row(
                        children: [
                          SizedBox(
                            width: 327,
                            height: size.height * 0.05,
                            child: TextFieldWidget(
                              validator: (value) {
                                if (emailController.text !=
                                    widget.users.email) {
                                  String newEmail = emailController.text;
                                  return newEmail;
                                }
                                return null;
                              },
                              onChanged: (value) {
                                widget.users.email = emailController.text;
                              },
                            ),
                          ),
                          const SizedBox(width: 18),
                          SquareButton(
                            icon: Icons.close,
                            colorBorder: ColorsAppLight.error60,
                            colorIcon: ColorsAppLight.error60,
                            colorButton: ColorsAppLight.white,
                            height: size.height * 0.05,
                            width: 52,
                            onTapSquareButton: () {
                              setState(() {
                                _isEditMail = !_isEditMail;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                          SquareButton(
                              icon: Icons.check,
                              colorBorder: ColorsAppLight.save,
                              colorIcon: ColorsAppLight.white,
                              colorButton: ColorsAppLight.save,
                              height: size.height * 0.05,
                              width: 52,
                              onTapSquareButton: () {
                                // FUNÇAO SALVAR

                                if (emailController.text !=
                                    widget.users.email) {
                                  String newEmail = emailController.text;
                                  newEmail;
                                }
                              }),
                        ],
                      ),
                    SizedBox(height: size.height * 0.028),
                    TextWidget(
                      text: 'CPF',
                      style: TextStyles.textMedium.copyWith(
                          fontSize: 14, color: ColorsAppLight.neutral50),
                    ),
                    SizedBox(height: size.height * 0.009),
                    if (_isEditCpf == false)
                      Row(
                        children: [
                          SizedBox(
                            width: 335,
                            child: TextWidget(
                              text: widget.users.cpf,
                              maxLines: 1,
                              style: TextStyles.textRegular.copyWith(
                                fontSize: 16,
                                color: ColorsAppLight.neutral40,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const Spacer(),
                          IconButtonWidget(
                            height: size.height * 0.05,
                            width: 105,
                            colorBackground: ColorsAppLight.white,
                            boxShadow: [
                              shadowTres,
                            ],
                            isIcon: const Icon(
                              IconsApp.pencil,
                              color: ColorsAppLight.neutral70,
                              size: 18,
                            ),
                            outlineColor: ColorsAppLight.neutral70,
                            title: 'Editar',
                            style: TextStyles.textMedium.copyWith(
                              color: ColorsAppLight.neutral70,
                              fontSize: 14,
                            ),
                            onPressed: () {
                              setState(() {
                                _isEditCpf = !_isEditCpf;
                              });
                            },
                          ),
                        ],
                      ),
                    if (_isEditCpf == true)
                      Row(
                        children: [
                          SizedBox(
                            width: 327,
                            height: size.height * 0.05,
                            child: TextFieldWidget(
                              validator: (value) {
                                return null;
                              },
                              onChanged: (value) {
                                widget.users.email = cpfController.text;
                              },
                            ),
                          ),
                          const SizedBox(width: 18),
                          SquareButton(
                            icon: Icons.close,
                            colorBorder: ColorsAppLight.error60,
                            colorIcon: ColorsAppLight.error60,
                            colorButton: ColorsAppLight.white,
                            height: size.height * 0.05,
                            width: 52,
                            onTapSquareButton: () {
                              setState(() {
                                _isEditCpf = !_isEditCpf;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                          SquareButton(
                              icon: Icons.check,
                              colorBorder: ColorsAppLight.save,
                              colorIcon: ColorsAppLight.white,
                              colorButton: ColorsAppLight.save,
                              height: size.height * 0.05,
                              width: 52,
                              onTapSquareButton: () {
                                // FUNÇAO SALVAR
                              }),
                        ],
                      ),
                    SizedBox(height: size.height * 0.028),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: 'Senha',
                              style: TextStyles.textMedium.copyWith(
                                  fontSize: 14,
                                  color: ColorsAppLight.neutral50),
                            ),
                            SizedBox(height: size.height * 0.01),
                            TextWidget(
                              text: '•••••••••••••••••••',
                              maxLines: 1,
                              style: TextStyles.textRegular.copyWith(
                                fontSize: 16,
                                color: ColorsAppLight.neutral40,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        ButtonWidget(
                          height: size.height * 0.05,
                          width: 142,
                          colorBackground: ColorsAppLight.white,
                          borderSide: ColorsAppLight.neutral70,
                          title: 'Resetar senha',
                          style: TextStyles.textMedium.copyWith(
                            color: ColorsAppLight.neutral70,
                            fontSize: 14,
                          ),
                          onPressed: () {
                            setState(() {
                              isReset = !isReset;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: isReset == false ? 0 : size.height * 0.032,
                    ),
                    Visibility(
                      visible: isReset,
                      child: TextWidget(
                        text:
                            'Uma senha temporária foi enviada para o e-mail cadastrado.',
                        style: TextStyles.textRegular.copyWith(
                          fontSize: 14,
                          color: ColorsAppLight.warning,
                          fontStyle: FontStyle.italic,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(height: size.height * 0.028),
                    IconButtonWidget(
                      height: size.height * 0.05,
                      width: widget.users.status == 'Usuário Ativo'
                          ? 189
                          : widget.users.status == 'Bloqueado'
                              ? 218
                              : 189,
                      title: widget.users.status == 'Usuário Ativo'
                          ? widget.titleState
                          : widget.users.status == 'Bloqueado'
                              ? widget.titleSelected
                              : 'Inativo',
                      maxLines: 1,
                      style: TextStyles.textMedium.copyWith(
                        color: widget.users.status == 'Usuário Ativo'
                            ? widget.colorBlock
                            : widget.users.status == 'Bloqueado'
                                ? widget.colorUnblock
                                : ColorsAppLight.neutral50,
                        fontSize: 16,
                      ),
                      spaceIcon: 8,
                      isIcon: Icon(
                        widget.users.status == 'Usuário Ativo'
                            ? IconsApp.warning
                            : Icons.check_circle_outline,
                        color: widget.users.status == 'Usuário Ativo'
                            ? widget.colorBlock
                            : widget.users.status == 'Bloqueado'
                                ? widget.colorUnblock
                                : ColorsAppLight.neutral50,
                        size: 18,
                      ),
                      outlineColor: widget.users.status == 'Usuário Ativo'
                          ? widget.colorBlock
                          : widget.users.status == 'Bloqueado'
                              ? widget.colorUnblock
                              : ColorsAppLight.neutral50,
                      colorBackground: ColorsAppLight.white,
                      boxShadow: [
                        shadowTres,
                      ],
                      onPressed: () {
                        Routefly.pop(context);
                        showDialog(
                          barrierColor: Colors.black.withOpacity(0.27),
                          context: context,
                          builder: (context) => DialogWithButtonWidget(
                            height: 349,
                            width: 443,
                            textDescriptionMessageAttention:
                                'Você deseja bloquear o usuário ${widget.users.name}? Esta ação irá deletar o usuário do banco de dados. Deseja continuar?',
                            isWhitName: true,
                            textName: TextWidget(
                                text: 'Bloquear ${widget.users.name}',
                                style: TextStyles.textMedium.copyWith(
                                  fontSize: 18,
                                  color: ColorsAppLight.neutral25,
                                )),
                            widthButtonBack: 164,
                            heightButtonBack: 48,
                            textButtonBack: 'Não, quero voltar',
                            onPressedBack: () {
                              Routefly.pop(context);
                            },
                            widthSpaceButtons: 16,
                            widthButtonConfirm: 199,
                            heightButtonConfirm: 48,
                            textButtonConfirm: 'Sim, quero prosseguir',
                            onPressedConfirm: widget.onPressedConfirmBlockUser,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    IconButtonWidget(
                      height: size.height * 0.05,
                      width: 189,
                      colorBackground: ColorsAppLight.error60,
                      spaceIcon: 8,
                      maxLines: 1,
                      boxShadow: [
                        shadowTres,
                      ],
                      isIcon: const Icon(
                        IconsApp.trash,
                        color: ColorsAppLight.white,
                        size: 18,
                      ),
                      outlineColor: ColorsAppLight.error60,
                      title: 'Excluir usuário',
                      style: TextStyles.textMedium.copyWith(
                        color: ColorsAppLight.white,
                        fontSize: 16,
                      ),
                      onPressed: widget.onPressedDeletUser,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
