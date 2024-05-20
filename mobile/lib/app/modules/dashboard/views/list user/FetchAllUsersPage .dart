import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/list%20user/FetchAllUsersController%20.dart';
import 'package:VirtualCoach/app/modules/dashboard/views/list%20user/UserDetailsPage.dart';

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
          // Filtrer les utilisateurs pour ne garder que ceux avec isCoach égal à 'Coch'
          final filteredUsers =
              controller.users.where((user) => user.isCoach == 'User').toList();

          if (filteredUsers.isEmpty) {
            return Center(
              child:
                  CircularProgressIndicator(), // Affiche un indicateur de chargement si la liste des utilisateurs filtrés est vide
            );
          } else {
            return ListView.builder(
              itemCount: filteredUsers.length,
              itemBuilder: (context, index) {
                final user = filteredUsers[index];
                return Card(
                  elevation:
                      3, // Ajoute une élévation à la carte pour un aspect tridimensionnel
                  margin: EdgeInsets.symmetric(
                      vertical: 8, horizontal: 16), // Marge autour de la carte
                  child: ListTile(
                    contentPadding: EdgeInsets.all(
                        16), // Ajoute du rembourrage à l'intérieur de la liste
                    leading: CircleAvatar(
                      radius:
                          30, // Augmente la taille du cercle pour l'image de profil
                      backgroundImage: NetworkImage(user.photo ??
                          ''), // Remplacez par l'URL de l'image de l'utilisateur
                    ),
                    title: Text(
                      user.firstName ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight
                            .bold, // Met en gras le prénom de l'utilisateur
                      ),
                    ),
                    subtitle: Text(
                      user.email ?? '',
                      style: TextStyle(
                        fontStyle: FontStyle
                            .italic, // Ajoute un style italique à l'email de l'utilisateur
                      ),
                    ),
                    onTap: () {
                      // Naviguer vers UserDetailsPage lorsque l'utilisateur appuie sur un élément de la liste
                      Get.to(UserDetailsPage(userModel: user));
                    },
                    // Vous pouvez ajouter d'autres éléments à afficher pour chaque utilisateur si nécessaire
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
