import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20Doctor%20Call%20Details/get_doctor_call_details_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_tab_content_info.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';

class NurseCaseTabContent extends StatefulWidget {
  const NurseCaseTabContent({
    super.key, required this.callID,
  });
final String callID;
  @override
  State<NurseCaseTabContent> createState() => _NurseCaseTabContentState();
}

class _NurseCaseTabContentState extends State<NurseCaseTabContent> {
  @override
  void initState() {
    BlocProvider.of<GetDoctorCallDetailsBloc>(context)
        .add(FetchDoctorCallDetails(callID: widget.callID));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Container(
          margin: EdgeInsetsDirectional.all(16),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: Color(0xffFDE8D9),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'You have a request',
                      style: TextStyle(
                          color: Color.fromARGB(255, 245, 103, 8),
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.close)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'You have a new request from the doctor, please follow up and implement the request as soon as possible.',
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Show details',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: Color.fromARGB(255, 217, 92, 2),
                  ),
                ),
              )
            ],
          ),
        )),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CaseTabContentInfo(),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: 16,
                ),
              ),
              CustomButton(
                text: "Call Doctor",
                width: MediaQuery.sizeOf(context).width,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
