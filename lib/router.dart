import 'package:auto_route/auto_route.dart';
import 'views/login_view.dart';
// import 'views/home_view.dart';
// import 'views/profile_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: LoginView, initial: true),
    // AutoRoute(page: HomeView),
    // AutoRoute(page: ProfileView),
  ],
)
class $AppRouter {}
