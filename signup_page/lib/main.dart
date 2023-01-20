
import 'package:signup_page/Router/NameOfRoute.dart';

import 'Packages/Packages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    initialRoute: NameOfRoute.signUp,
    getPages: getPages,
    debugShowCheckedModeBanner: false,

    );
  }
}
