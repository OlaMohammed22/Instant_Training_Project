import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/Create%20Bloc/create_call_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/send_call_request_successfully_view.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_create_call_form.dart';

class ReceptionistCreateCallViewBody extends StatelessWidget {
  const ReceptionistCreateCallViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateCallBloc, CreateCallState>(
      listener: (context, state) {
        if (state is CreateCallFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errMessage,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: const Color.fromARGB(255, 125, 29, 22),
            ),
          );
        } else if (state is CreateCallSuccess) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SendCallRquestSuccessfullyView();
              },
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: ModalProgressHUD(
                progressIndicator: CircularProgressIndicator(
                  color: Colors.black,
                ),
                inAsyncCall: state is CreateCallLoading ? true : false,
                child: ReceptionistCreateCallForm(),
              ),
            )
          ],
        );
      },
    );
  }
}
