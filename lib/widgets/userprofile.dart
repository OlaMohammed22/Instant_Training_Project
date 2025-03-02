import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Hr/Reports/Presentation/views/widgets/notifications.dart';

import '../ui/Hr/Reports/Presentation/cubit/profile/profile_cubit.dart';
import '../ui/Hr/Reports/Presentation/cubit/profile/profile_state.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        if (state is ProfileLoaded) {
          final user = state.user.data;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: onTap,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/hrrr.png'),
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${user?.firstName} ${user?.lastName}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Specialist,${user?.specialist}',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff22C7B8)),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  child: Image.asset('assets/gg.png'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return NotificationScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        } else if (state is ProfileFailure) {
          return Center(
            child: Text(state.erMessage),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
