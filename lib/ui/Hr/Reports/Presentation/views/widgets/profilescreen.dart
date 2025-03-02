import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Hr/Reports/Presentation/cubit/profile/profile_cubit.dart';

import '../../cubit/profile/profile_state.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: const Text("My Profile"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoaded) {
            final user = state.user.data;

            return Column(
              children: [
                const SizedBox(height: 10),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?w=202&h=303&c=7&r=0&o=5&dpr=1.5&pid=1.7'), // استبدلها بالصورة الفعلية
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "${user?.firstName} ${user?.lastName}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        profileDetail(Icons.medical_services,
                            "Specialist - ${user?.specialist}"),
                        profileDetail(
                            user?.gender == 'Male' ? Icons.male : Icons.female,
                            user?.gender ?? ''),
                        profileDetail(
                            Icons.calendar_today, user?.birthday ?? ''),
                        profileDetail(Icons.location_on, user?.address ?? ''),
                        profileDetail(Icons.favorite, user?.status ?? ''),
                        profileDetail(Icons.email, user?.email ?? ''),
                        profileDetail(Icons.phone, user?.mobile ?? ''),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else if (state is ProfileFailure) {
            return Center(
              child: Text(state.erMessage),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget profileDetail(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.teal.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.teal),
          ),
          const SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
