import 'package:all_nations/application/auth/register/register_bloc.dart';
import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/domain/core/util/validator.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/auth_header_builder.widget.dart';
import 'package:all_nations/presentation/widgets/button.widget.dart';
import 'package:all_nations/presentation/widgets/snackbar.widget.dart';
import 'package:all_nations/presentation/widgets/text_form_field.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

@RoutePage()
class RegisterPage extends StatelessWidget implements AutoRouteWrapper {
  RegisterPage({Key? key}) : super(key: key);

  final _formKey = getIt<GlobalKey<FormState>>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.failureOrSuccessOption.isSome()) {
          final failureOrSuccess = state.failureOrSuccessOption
              .getOrElse(() => const Left(AuthFailure.serverError()));

          if (failureOrSuccess.isRight()) {
            // go to home page
            context.router.replaceAll([const IndexRoute()]);
          } else {
            // show error message
            final failure = failureOrSuccess
                .swap()
                .getOrElse(() => const AuthFailure.serverError());
            ScaffoldMessenger.of(context).showSnackBar(snackBarWidget(
                text: failure.maybeMap(
                  serverError: (e) => "Server error ${e.message}",
                  orElse: () => "Something went wron. Try again later.",
                ),
                context: context,
                type: SnackBarType.error));
          }
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => unfocus(context),
          child: Scaffold(
            body: Form(
              key: _formKey,
              autovalidateMode: state.validateFields
                  ? AutovalidateMode.onUserInteraction
                  : AutovalidateMode.disabled,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                children: [
                  authHeaderBuilder(context, const BoxConstraints(), 0),
                  const SizedBox(height: 32),
                  TextFormFieldWidget(
                    text: state.firstname,
                    hint: "What is your first name?",
                    label: "First Name",
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.user),
                    onChanged: (text) => context
                        .read<RegisterBloc>()
                        .add(RegisterEvent.firstnameChanged(firstname: text)),
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    text: state.lastname,
                    hint: "What is your last name?",
                    label: "Last Name",
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.user),
                    onChanged: (text) => context
                        .read<RegisterBloc>()
                        .add(RegisterEvent.lastnameChanged(lastname: text)),
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    text: state.email,
                    hint: "What is your last email?",
                    label: "Email",
                    validator: getIt<Validator>().validateEmail,
                    suffixIcon: const Icon(LineAwesomeIcons.at),
                    onChanged: (text) => context
                        .read<RegisterBloc>()
                        .add(RegisterEvent.emailChanged(email: text)),
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    text: state.church,
                    hint: "What is the name of your church/denomination?",
                    label: "Church/Denomination",
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.church),
                    onChanged: (text) => context
                        .read<RegisterBloc>()
                        .add(RegisterEvent.churchChanged(church: text)),
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    key: UniqueKey(),
                    text: state.countryCode.name,
                    hint: "What country are you currently in?",
                    label: "Country",
                    readOnly: true,
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.globe),
                    prefixIcon: CountryCodePicker(
                      initialSelection: state.countryCode.code,
                      showDropDownButton: true,
                      onChanged: (countryCode) => context
                          .read<RegisterBloc>()
                          .add(RegisterEvent.countryChanged(
                              countryCode: countryCode)),
                    ),
                    onTap: () => context
                        .read<RegisterBloc>()
                        .add(const RegisterEvent.countryDialogToggled()),
                  ),
                  const SizedBox(height: 32),
                  ButtonWidget(
                    label: "Register",
                    onTap: () {
                      unfocus(context);
                      context.read<RegisterBloc>().add(
                          RegisterEvent.registerButtonPressed(
                              formKey: _formKey));
                    },
                    isLoading: state.isLoading,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterBloc>(),
      child: this,
    );
  }
}
