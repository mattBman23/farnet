import 'package:farnet/templateApps/animalPlanet/main.dart';
import 'package:farnet/templateApps/ewallet/main.dart';

class TemplateList {
  TemplateList._();

  static List<Map> tempList = [
    {"name": "Animal Planet", "dPath": AplanetMain()},
    {"name": "Ewallet", "dPath": EwalletMain()},
  ];
}
