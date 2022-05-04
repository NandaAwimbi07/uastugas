import 'package:flutter/material.dart';
import 'package:uas1/homePage/homePage.dart';
import 'package:uas1/loginPage/verification.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/masuk':
        return MaterialPageRoute(builder: (_) => verifikasi());
      case '/Home':
        return MaterialPageRoute(builder: (_) => myHomePage());
      case '/scan':
      // return MaterialPageRoute(builder: (_) => BarcodeScannerWithController());
      // case '/contact':
      //   return MaterialPageRoute(builder: (_) => Contact());

      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
