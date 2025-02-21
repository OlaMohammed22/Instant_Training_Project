import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/commen_screens/auth/presentation/views/widgets/login_view_body.dart';

import '../../../../../widgets/background.dart';
import '../../data/repository/auth_repository.dart';
import '../bloc/auth/auth_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: BlocProvider(
          create: (context) => AuthCubit(AuthRepository()),
          child: LoginViewBody(),
        ),
      ),
    );
  }
}
