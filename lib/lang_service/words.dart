import 'package:flutter/cupertino.dart';

import 'app_lang.dart';

extension MyWords on Words {
  String tr(BuildContext context) => AppLocalization.of(context).tr(name);
}

enum Words { choose, customize, next, skip, search, quick, you_can, get, prize }
