import 'package:app6/Src/Layout/Localization/Languages/ben.dart';
import 'package:app6/Src/Layout/Localization/Languages/eng.dart';
import 'package:get/get.dart';


class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "bn_BD":ben,
    "en_US":eng
  };



}

