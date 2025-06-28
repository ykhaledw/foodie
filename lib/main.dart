import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/supabase_constants.dart';
import 'package:foodie/core/routing/app_router.dart';
import 'package:foodie/foodie_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: SupabaseConstants.supabaseUrl,
    anonKey: SupabaseConstants.supabaseAnonKey,
  );
  runApp(FoodieApp(appRouter: AppRouter()));
}

final supabase = Supabase.instance.client;