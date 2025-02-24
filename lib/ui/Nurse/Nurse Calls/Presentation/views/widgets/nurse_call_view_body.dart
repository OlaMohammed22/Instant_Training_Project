import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Accept%20Doctor%20Call/accept_or_reject_doctor_call_bloc.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_actions_buttons.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/view%20models/bloc/get_nurse_calls_bloc.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/nurse_case_details.dart';

class NurseCallViewBody extends StatefulWidget {
  const NurseCallViewBody({super.key});

  @override
  State<NurseCallViewBody> createState() => _NurseCallViewBodyState();
}

class _NurseCallViewBodyState extends State<NurseCallViewBody> {
  @override
  void initState() {
    BlocProvider.of<GetNurseCallsBloc>(context).add(
      GetNurseCallsEvent(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AcceptOrRejectDoctorCallBloc,
        AcceptOrRejectDoctorCallState>(
      listener: (context, state) {
        if (state is AcceptOrRejectDoctorCallSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: const Color.fromARGB(255, 32, 117, 34),
              content: Text(state.message),
            ),
          );
        } else if (state is AcceptOrRejectDoctorCallFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: const Color.fromARGB(255, 118, 28, 21),
              content: Text(
                state.errMessage,
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return BlocBuilder<GetNurseCallsBloc, GetNurseCallsState>(
          builder: (context, state) {
            if (state is GetNurseCallsSuccess) {
              if (state.data.length == 0) {
                return Expanded(
                  child: Center(
                    child: Text("No Calls "),
                  ),
                );
              } else {
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NurseCaseDetails(
                                callID: state.data[index].id.toString(),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 60,
                                color: Color(0xffE5E5E5),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(Assets.personIcon),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Text(
                                      state.data[index].patientName.toString(),
                                      style: TextStyles.style14Regular,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        child: Icon(
                                          FontAwesomeIcons.stethoscope,
                                          size: 12,
                                          color: Colors.white,
                                        )),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    const Text("Dr. Salma Ali"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(Assets.calenderIcon),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Text(
                                      formatDate(
                                        state.data[index].createdAt.toString(),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                DoctorCallActionsButtons(
                                  callID: state.data[index].id.toString(),
                                )
                              ],
                            ),
                          ),
                        ));
                  },
                );
              }
            } else if (state is GetNurseCallsFailure) {
              return Expanded(
                child: Center(
                  child: Text(state.errMessage),
                ),
              );
            } else {
              return Expanded(
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.black,
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }

  String formatDate(String inputDate) {
    DateTime date = DateTime.parse(inputDate); // Parse the date
    String formattedDate = DateFormat('dd .MM .yyyy').format(date); // Format it
    return formattedDate;
  }
}
