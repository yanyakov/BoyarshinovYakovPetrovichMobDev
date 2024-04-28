import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:your_app_name/home_page.dart';
import 'package:your_app_name/settings_page.dart';
import 'package:your_app_name/news_feed_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: SettingsPage),
    MaterialRoute(page: NewsFeedPage),
  ],
)
class $AppRouter {}
