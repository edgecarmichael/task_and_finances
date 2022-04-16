import 'package:provider/provider.dart';
import 'package:task_and_finances/app/core/config_modules/app_module_config.dart';
import 'package:task_and_finances/app/modules/auth/login/login_controller.dart';
import 'package:task_and_finances/app/modules/auth/login/login_page.dart';

class AuthModule extends AppModuleConfig {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (_) => LoginController(),
            ),
          ],
          routers: {
            '/login': (context) => const LoginPage(),
          },
        );
}
