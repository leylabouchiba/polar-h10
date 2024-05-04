import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hatofit/app/modules/dashboard/views/list%20user/FetchAllUsersController%20.dart';

class FetchAllUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch All Users'),
      ),
      body: GetBuilder<FetchAllUsersController>(
        init: FetchAllUsersController(), // Initialisez le contrôleur
        builder: (controller) {
          if (controller.users.isEmpty) {
            return Center(
              child: CircularProgressIndicator(), // Affiche un indicateur de chargement si la liste des utilisateurs est vide
            );
          } else {
            return ListView.builder(
              itemCount: controller.users.length,
              itemBuilder: (context, index) {
                final user = controller.users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.photo ?? ''), // Remplacez par l'URL de l'image de l'utilisateur
                  ),
                  title: Text(user.firstName ?? ''),
                  subtitle: Text(user.email ?? ''),
                  // Vous pouvez ajouter d'autres éléments à afficher pour chaque utilisateur si nécessaire
                );
              },
            );
          }
        },
      ),
    );
  }
}
