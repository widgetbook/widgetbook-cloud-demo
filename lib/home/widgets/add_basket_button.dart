import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AddBasketButton,
  designLink:
      'https://www.figma.com/file/2KQWHOqLW3w0PlmBTuZT01/Widgetbook-Groceries-App-Demo?type=design&node-id=112-2401&mode=dev',
)
Widget buildIconButtonUseCase(BuildContext context) {
  return AddBasketButton(
    icon: Icons.shopping_bag_outlined,
    onPressed: () {},
  );
}

class AddBasketButton extends StatelessWidget {
  const AddBasketButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(
          AppTheme.of(context).spacing.small,
        ),
        decoration: BoxDecoration(
          color: AppTheme.of(context).surface.primary,
          borderRadius: BorderRadius.circular(
            AppTheme.of(context).radius.full,
          ),
          border: Border.all(
            color: AppTheme.of(context).border.highEmphasis,
          ),
        ),
        child: Icon(
          icon,
          size: 24,
          color: AppTheme.of(context).surface.secondary,
        ),
      ),
    );
  }
}
