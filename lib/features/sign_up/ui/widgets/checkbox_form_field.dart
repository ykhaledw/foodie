import 'package:flutter/material.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/core/theming/styles.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({
    super.key,
    required String title,
    super.onSaved,
    super.validator,
    bool super.initialValue = false,
    bool autovalidate = false,
  }) : super(
         builder: (FormFieldState<bool> state) {
           return CheckboxListTile(
             dense: state.hasError,
             side: BorderSide(color: AppColors.darkerColorOfPrimary),
             activeColor: Colors.transparent,
             checkColor: AppColors.black,
             title: Text(
               title,
               style: TextStyles.font16BlackRegular,
               maxLines: 2,
               overflow: TextOverflow.ellipsis,
             ),
             value: state.value,
             onChanged: state.didChange,
             subtitle:
                 state.hasError
                     ? Builder(
                       builder:
                           (BuildContext context) => Text(
                             state.errorText ?? "",
                             style: TextStyle(
                               color: Theme.of(context).colorScheme.error,
                             ),
                           ),
                     )
                     : null,
             controlAffinity: ListTileControlAffinity.leading,
           );
         },
       );
}
