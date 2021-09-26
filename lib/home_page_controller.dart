import 'package:get/get_connect/connect.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:httpsample/anime_model.dart';

class HomePageController extends GetxController {
  final url = "https://animechan.vercel.app/api/random";
  // Map<String, dynamic>? result;
  Anime? anime;
  getAnimeQuotes() async {
    final response = await GetConnect().get(url);
    // result = response.body;
    // print(result);
    anime = Anime.fromJson(response.body);
    update();
  }

  @override
  void onInit() async {
    super.onInit();
    await getAnimeQuotes();
  }
}
