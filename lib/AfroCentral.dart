import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';
import 'meta/views/splashscreen.dart';


class AfroCentral extends StatelessWidget {
  const AfroCentral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AfroCentral',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home:  SplashScreen(),
      navigatorObservers: [OneContext().heroController],
    //  onGenerateRoute: RouteGenerator.generateRoute,
      builder: OneContext().builder,
      navigatorKey: OneContext().key,
   //   theme: CustomThemeData.getThemeData(),
    );
  }
}



