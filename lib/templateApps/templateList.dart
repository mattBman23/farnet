import 'package:farnet/templateApps/animalPlanet/main.dart';
import 'package:farnet/templateApps/doctorAppointment/main.dart';
import 'package:farnet/templateApps/ewallet/main.dart';
import 'package:farnet/templateApps/gamingui/main.dart';
import 'package:farnet/templateApps/homecleaning/main.dart';
import 'package:farnet/templateApps/laundry/main.dart';
import 'package:farnet/templateApps/mediationUI/main.dart';
import 'package:farnet/templateApps/ninjaTrips/main.dart';
import 'package:farnet/templateApps/productionApp/main.dart';
import 'package:farnet/templateApps/snakes/main.dart';

class TemplateList {
  TemplateList._();

  static List<Map> tempList = [
    {"name": "Animal Planet", "dPath": AplanetMain()},
    {"name": "Laundry", "dPath": LaundryMain()},
    {"name": "Ewallet", "dPath": EwalletMain()},
    {"name": "Snake", "dPath": SnakeMain()},
    {"name": "Doctor's App", "dPath": DoctorAppMain()},
    {"name": "Mediation", "dPath": MediationUIMain()},
    {"name": "Homecleaning", "dPath": HomecleaningMain()},
    {"name": "Gaming UI", "dPath": GamingUIMain()},
    {"name": "Ninjatrip", "dPath": NinjaTripMain()},
    {"name": "Prod App", "dPath": ProdAppMain()},
  ];
}
