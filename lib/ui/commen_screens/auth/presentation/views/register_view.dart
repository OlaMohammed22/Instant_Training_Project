import 'package:flutter/material.dart';
import 'package:untitled36/ui/commen_screens/auth/presentation/views/widgets/register_view_body.dart';

import '../../../../../widgets/background.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: RegisterViewBody(),
      ),
    );
  }
}
