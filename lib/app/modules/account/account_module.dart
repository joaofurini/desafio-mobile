import 'account_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'account_page.dart';

class AccountModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AccountController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => AccountPage()),
      ];

  static Inject get to => Inject<AccountModule>.of();
}
