
import '../../models/user_model.dart';
import '../design_system.dart';
import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class ListToUsersWidget extends StatelessWidget {
  final UserModel users;
  final VoidCallback onTap;
  final bool selectedItem;
  final void Function()? onPressedViewProfile;

  const ListToUsersWidget({
    super.key,
    required this.users,
    required this.onTap,
    required this.selectedItem,
    this.onPressedViewProfile,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        right: size.width * 0.01,
        left: size.width * 0.01,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 54,
            width: 53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              users.image,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.19,
                child: TextWidget(
                  text: users.name,
                  style: TextStyles.textBold
                      .copyWith(fontSize: 16, color: ColorsAppLight.neutral40),
                ),
              ),
              SizedBox(height: size.width * 0.001),
              SizedBox(
                width: size.width * 0.19,
                child: TextWidget(
                  text: users.email,
                  style: TextStyles.textRegular.copyWith(
                    fontSize: 16,
                    color: ColorsAppLight.neutral40,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          ButtonWidget(
            height: size.height * 0.03,
            title: users.status,
            style: TextStyles.textRegular.copyWith(
              fontSize: 12,
              color: users.status == 'Usuário Ativo'
                  ? ColorsAppLight.onCorrect
                  : users.status == 'Bloqueado'
                      ? ColorsAppLight.warming
                      : ColorsAppLight.neutral50,
            ),
            borderSide: users.status == 'Usuário Ativo'
                ? ColorsAppLight.onCorrect
                : users.status == 'Bloqueado'
                    ? ColorsAppLight.warming
                    : ColorsAppLight.neutral50,
            colorBackground: users.status == 'Usuário Ativo'
                ? ColorsAppLight.correct
                : users.status == 'Bloqueado'
                    ? ColorsAppLight.warning80
                    : ColorsAppLight.neutral80,
            radiusCircular: 16,
          ),
          SizedBox(width: size.width * 0.02),
          ButtonWidget(
            width: size.height * 0.14,
            height: size.height * 0.052,
            colorBackground: ColorsAppLight.white,
            borderSide: ColorsAppLight.neutral50,
            title: 'Ver perfil',
            style: TextStyles.textMedium.copyWith(
              color: ColorsAppLight.neutral50,
              fontSize: 16,
            ),
            onPressed: onPressedViewProfile,
          ),
        ],
      ),
    );
  }
}
