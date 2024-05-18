import 'package:hive/hive.dart';

class HistoryDatabase {
  String qrText;

  HistoryDatabase(this.qrText);

  void hiveDatabase() async {
    var box = await Hive.openBox('DB-QRScan');
    box.put(qrText, qrText);
  }
}
