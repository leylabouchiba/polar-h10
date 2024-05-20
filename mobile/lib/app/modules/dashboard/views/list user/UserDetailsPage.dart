import 'package:flutter/material.dart';
import 'package:VirtualCoach/app/models/user_model.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/history/detail_page/history_detail_page.dart';

class UserDetailsPage extends StatelessWidget {
  final UserModel userModel;

  UserDetailsPage({required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name: ${userModel.firstName}'),
            Text('Last Name: ${userModel.lastName}'),
            Text('Gender: ${userModel.gender}'),
            Text('Email: ${userModel.email}'),
            Text('Date of Birth: ${userModel.dateOfBirth}'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (userModel.id != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryDetailPage(userModel.id!),
                    ),
                  );
                } else {
                  // Handle the case where userModel.id is null
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('User ID is null.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('View History'),
            ),
          ],
        ),
      ),
    );
  }
}
