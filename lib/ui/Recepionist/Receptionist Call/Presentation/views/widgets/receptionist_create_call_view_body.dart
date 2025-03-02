import 'package:flutter/material.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_create_call_form.dart';

class ReceptionistCreateCallViewBody extends StatelessWidget {
  const ReceptionistCreateCallViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: ReceptionistCreateCallForm(),
        )
      ],
    );
  }
}
