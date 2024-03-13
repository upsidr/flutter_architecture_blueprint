import 'package:device_preview/device_preview.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'main.dart';

Future<void> main() async {
  await initializeDateFormatting();
  Intl.defaultLocale = 'ja_JP';

  runApp(
    DevicePreview(
      builder: (_) => const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}
