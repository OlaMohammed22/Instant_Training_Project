import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/constants.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_list_tile_item.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_search_text_form_field.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          centerTitle: true,
          surfaceTintColor: AppColors.white,
          title: Text(
            "Select Doctor",
            style: TextStyles.style16Regular,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              //  GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SearchTextField(
              prefixIcon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
              ),
              hint: "Search For Doctor",
              onSaved: (value) {},
              validator: (value) {
               // return FormValidation.optionalField(value);
              return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const SelectDoctorListTileItemsListInManager(),
            CustomButton(
              text: "Select Doctor",
              width: MediaQuery.sizeOf(context).width,
              onPressed: () {
                // BlocProvider.of<SelectDoctorCubit>(context).selectDoctor();
                // //   GoRouter.of(context).pop();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}


class SelectDoctorListTileItemsListInManager extends StatefulWidget {
  const SelectDoctorListTileItemsListInManager({
    super.key,
  });

  @override
  State<SelectDoctorListTileItemsListInManager> createState() =>
      _SelectDoctorListTileItemsListInManagerState();
}

class _SelectDoctorListTileItemsListInManagerState extends State<SelectDoctorListTileItemsListInManager> {
  bool selected = false;
  DoctorInfoModel? groupValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Constants.doctorsList.length,
        itemBuilder: (context, ind) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
            child: DoctorListTileItem(
                ind: ind,
                list: Constants.doctorsList,
                groupValue: groupValue,
                onChanged: (value) {
                  // SelectDoctorCubit.doctorInfoModel = value;
                  // BlocProvider.of<SelectDoctorCubit>(context).selectDoctor();
                  // setState(
                  //   () {
                  //     groupValue = value;
                  //   },
                  // );
                }),
          );
        },
      ),
    );
  }
}
