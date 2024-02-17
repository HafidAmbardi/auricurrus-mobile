import 'package:flutter/material.dart';
import 'package:hafidomio_s_application2/backend/pages/home_page.dart';
import 'package:hafidomio_s_application2/backend/pages/login_page.dart';
import 'package:hafidomio_s_application2/backend/providers/auth_provider.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/presentation/gate_screen/gate_screen.dart';
import 'package:hafidomio_s_application2/presentation/name_filled_screen/name_filled_screen.dart';
import 'package:hafidomio_s_application2/presentation/welcome_signup_screen/welcome_signup_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Sizer.init(context);
    final authState = ref.watch(authStateProvider);

    return authState.when(
        data: (user) {
          if (user != null) return NameFilledScreen();
          return LoginPage();
        },
        loading: () => const SplashScreen(),
        error: (e, trace) => const LoginPage());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}





















// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:test/pages/home_page.dart';
// import 'package:test/pages/profile_fill.dart';
// import 'package:test/pages/login_page.dart';

// class AuthGate extends StatelessWidget {
//   const AuthGate({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // FirebaseAuth auth = FirebaseAuth.instance;

//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return const HomePage();
//           } else {
//             return const LoginPage();
//           }
//         },
//       ),
//     );
//   }
// }