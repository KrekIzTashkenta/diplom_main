import 'package:diplom_main/auth/ui/components/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/auth_state/auth_cubit.dart';

class AuthBuilder extends StatelessWidget {
  const AuthBuilder({
    super.key,
    required this.isNotAuthorized,
    required this.isWaiting,
    required this.isAuthorized,
  });

  final WidgetBuilder isNotAuthorized;
  final WidgetBuilder isWaiting;
  final ValueWidgetBuilder isAuthorized;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (BuildContext context, state) {
        return state.when(
          notAuthorized: () => isNotAuthorized(context),
          authorized: (userEntity) => isAuthorized(context, userEntity, this),
          waiting: () => isWaiting(context),
          error: (error) => isNotAuthorized(context),
        );
      },
      listenWhen: ((previous, current) =>
          previous.mapOrNull(
            error: (value) => value,
          ) !=
          current.mapOrNull(
            error: (value) => value,
          )),
      listener: (BuildContext context, AuthState state) {
        state.whenOrNull(
          error: (error) =>
              AppSnackBar.showSnackBarWithError(context, error.toString()),
        );
      },
    );
  }
}
