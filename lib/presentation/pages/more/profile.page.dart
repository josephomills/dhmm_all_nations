import 'package:all_nations/application/profile/profile_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/domain/core/util/validator.dart';
import 'package:all_nations/presentation/widgets/auth_header_builder.widget.dart';
import 'package:all_nations/presentation/widgets/button.widget.dart';
import 'package:all_nations/presentation/widgets/text_form_field.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

@RoutePage()
class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = getIt<GlobalKey<FormState>>();

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => unfocus(context),
          child: Scaffold(
            appBar: AppBar(
              title: Text(context.router.current.meta["title"]),
              actions: [
                IconButton(
                  onPressed: () => context
                      .read<ProfileBloc>()
                      .add(const ProfileEvent.editingToggled()),
                  icon: Icon(
                    state.isEditing
                        ? LineAwesomeIcons.times
                        : LineAwesomeIcons.alternate_pencil,
                  ),
                ),
                if (state.isEditing)
                  IconButton(
                    onPressed: () => context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.saveButtonPressed(formKey: _formKey)),
                    icon: const Icon(LineAwesomeIcons.save),
                  ),
                const SizedBox(width: 16),
              ],
            ),
            body: Form(
              key: _formKey,
              autovalidateMode: state.validateFields
                  ? AutovalidateMode.onUserInteraction
                  : AutovalidateMode.disabled,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
                        .read<ProfileBloc>()
                        .add(ProfileEvent.firstnameChanged(firstname: text)),
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    text: state.lastname,
                    hint: "What is your last name?",
                    label: "Last Name",
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.user),
                    onChanged: (text) => context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.lastnameChanged(lastname: text)),
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    text: state.email,
                    hint: "What is your last email?",
                    label: "Email",
                    validator: getIt<Validator>().validateEmail,
                    suffixIcon: const Icon(LineAwesomeIcons.at),
                    onChanged: (text) => context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.emailChanged(email: text)),
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    text: state.church,
                    hint: "What is the name of your church/denomination?",
                    label: "Church/Denomination",
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.church),
                    onChanged: (text) => context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.churchChanged(church: text)),
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
                          .read<ProfileBloc>()
                          .add(ProfileEvent.countryChanged(
                              countryCode: countryCode)),
                    ),
                    onTap: () => context
                        .read<ProfileBloc>()
                        .add(const ProfileEvent.countryDialogToggled()),
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
      create: (context) => getIt<ProfileBloc>(),
      child: this,
    );
  }
}
