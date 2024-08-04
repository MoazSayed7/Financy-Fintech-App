import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'core/routing/app_router.dart';
import 'fintech_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    ScreenUtil.ensureScreenSize(),
    preloadSVGs([
      'assets/svgs/notifications.svg',
    ]),
  ]);

  runApp(
    FintechApp(
      appRouter: AppRouter(),
    ),
  );
}

Future<void> preloadSVGs(List<String> paths) async {
  for (final path in paths) {
    final loader = SvgAssetLoader(path);
    await svg.cache.putIfAbsent(
      loader.cacheKey(null),
      () => loader.loadBytes(null),
    );
  }
}
