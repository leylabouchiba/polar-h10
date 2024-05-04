import 'package:get/get.dart';
import 'package:hatofit/app/models/user_model.dart';
import 'package:hatofit/app/services/internet_service.dart';

class FetchAllUsersController extends GetxController {
  final String title = 'Fetch All Users';
  final RxList<UserModel> users = <UserModel>[].obs;

  @override
  void onInit() {
    fetchAllUsers(); // Appelez fetchAllUsers lors de l'initialisation du contrôleur
    super.onInit();
  }

  Future<void> fetchAllUsers() async {
    try {
      final res = await InternetService().fetchAllUsers(); // Utilisez votre service internet pour récupérer les utilisateurs
      if (res.statusCode == 200) {
        final List<dynamic> userList = res.body['users']; // Supposons que votre réponse contient une liste d'utilisateurs
        users.value = userList.map((userData) => UserModel.fromJson(userData)).toList(); // Convertissez les données JSON en objets UserModel et mettez-les à jour dans la liste
        update(); // Mettez à jour l'UI après avoir récupéré les utilisateurs
      } else {
        // Gérez les erreurs de votre choix, par exemple afficher un message d'erreur
        print('Erreur lors de la récupération des utilisateurs: ${res.statusCode}');
      }
    } catch (e) {
      // Gérez les erreurs de votre choix, par exemple afficher un message d'erreur
      print('Erreur lors de la récupération des utilisateurs: $e');
    }
  }
}
