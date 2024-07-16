import 'package:alhadith/data/dataService.dart';
import 'package:get/get.dart';
import 'package:alhadith/data/modelData.dart';

class HadithController extends GetxController {
  final DatabaseService databaseService = DatabaseService();

  var chapters = <Chapter>[].obs;
  var books = <Book>[].obs;
  var hadiths = <Hadith>[].obs;
  var sections = <Section>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    await databaseService.initDatabase();
    chapters.assignAll(await databaseService.getChapters());
    books.assignAll(await databaseService.getBooks());
    hadiths.assignAll(await databaseService.getHadiths());
    sections.assignAll(await databaseService.getSections());
  }
}

