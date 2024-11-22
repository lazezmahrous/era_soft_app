import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:t_shirt/features/sign_up/data/models/user_sign_up_request_body.dart';
import 'package:t_shirt/features/sign_up/logic/cubit/sign_up_state.dart';
import '../../data/repos/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignupRepo _signupRepo;

  SignUpCubit(this._signupRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  String address = 'مصر الفيوم أبشواي';
  String countryCode = '';
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignUpState.loading());

    try {
      await _signupRepo
          .signup(
        UserSignUpRequestBody(
            userName: nameController.text,
            email: emailController.text,
            password: passwordController.text,
            address: addressController.text,
            phoneNumber: '$countryCode${phoneController.text}'),
      )
          .then((res) {
        if (res == 'success') {
          emit(const SignUpState.success());
        } else {
          emit(SignUpState.error(error: res));
        }
      });
    } catch (error) {
      emit(SignUpState.error(error: error.toString()));
    }
  }

  // Future<void> saveUserData(UserDataModel userData, String token) async {
  //   print(userData.userEmail);
  //   await HiveHeleper.saveUserData(userData);
  // }
}
