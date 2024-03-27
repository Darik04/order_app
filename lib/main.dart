import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kassa/constants/colors/color_styles.dart';
import 'package:kassa/constants/main_config_app.dart';
import 'package:kassa/features/main/presentation/bloc/order/order_bloc.dart';
import 'package:kassa/features/main/presentation/views/main_view.dart';
import 'package:kassa/locator.dart';



Future<void> main() async {
  setupInjections();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<OrderBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: MainConfigApp.appName,
        themeAnimationCurve: Curves.easeInOutQuint,
        theme: ThemeData(
          primarySwatch: ColorStyles.primarySwath,
          primaryColor: ColorStyles.primary,
          appBarTheme: const AppBarTheme(
            foregroundColor: ColorStyles.white
          )
        ),
        home: const MainView(),
      ),
    );
  }
}
