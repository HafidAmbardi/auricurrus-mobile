import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hafidomio_s_application2/backend/login_controller/login_state.dart';
import 'package:hafidomio_s_application2/backend/providers/auth_provider.dart';

class LoginController extends StateNotifier<LoginState> {
  LoginController(this.ref) : super(const LoginStateInitial());

  final Ref ref;

  void login() async {
    state = const LoginStateLoading();
    try {
      await ref.read(authRepositoryProvider).handleGoogleSignIn();
      state = const LoginStateSuccess();
    } catch (e) {
      state = LoginStateError(e.toString() + 'errro');
    }
  }

  void signOut() async {
    await ref.read(authRepositoryProvider).signOut();
  }
}

final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>((ref) {
  return LoginController(ref);
});