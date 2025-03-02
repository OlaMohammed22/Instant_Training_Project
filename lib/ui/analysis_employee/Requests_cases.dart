import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/Data/Displaycases_repo.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_event.dart';
import 'package:untitled36/bloc/bloc_state.dart';
import 'package:untitled36/ui/Doctor/case_details.dart';
import 'package:untitled36/Data/Display_cases_model.dart';
import 'package:untitled36/ui/analysis_employee/Case_detials.dart';

class CasesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cases'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) =>
            CaseBlocc(CaseRepository())..add(FetchCasesEvent()),
        child: BlocBuilder<CaseBlocc, CaseState>(
          builder: (context, state) {
            print('Current state: $state');
            if (state is CaseLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CaseLoadedState) {
              final List<CasesDisplay> caseList = state.cases;
              if (caseList.isEmpty) {
                return const Center(child: Text('No cases available.'));
              }
              return ListView.builder(
                itemCount: caseList.length,
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return _buildCaseCard(context, caseList[index]);
                },
              );
            } else if (state is CaseErrorState) {
              return Center(child: Text('Error: ${state.error}'));
            }
            return const Center(child: Text('No data available.'));
          },
        ),
      ),
    );
  }
}

Widget _buildCaseCard(BuildContext context, CasesDisplay caseData) {
  return Card(
    margin: const EdgeInsets.only(bottom: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    elevation: 2,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoRow(Icons.person, caseData.patient_name ?? 'Unknown Case'),
          const SizedBox(height: 8),
          _buildInfoRow(Icons.calendar_today,
              caseData.created_at?.toString() ?? 'No Status'),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CaseDetails(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Show Details ',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildInfoRow(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon, color: Colors.teal, size: 20),
      const SizedBox(width: 8),
      Expanded(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
