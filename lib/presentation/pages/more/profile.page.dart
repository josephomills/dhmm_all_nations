import 'package:all_nations/application/profile/profile_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/domain/core/util/validator.dart';
import 'package:all_nations/presentation/widgets/button.widget.dart';
import 'package:all_nations/presentation/widgets/text_form_field.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

@RoutePage()
class ProfilePage extends StatefulWidget implements AutoRouteWrapper {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.started()),
      child: this,
    );
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = getIt<GlobalKey<FormState>>();

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return GestureDetector(
          onTap: () => unfocus(context),
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Profile"),
              actions: [
                Row(
                  children: [
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
                    GestureDetector(
                      onTap: () => context
                          .read<ProfileBloc>()
                          .add(const ProfileEvent.editingToggled()),
                      child: Text(state.isEditing ? "Close" : "Edit"),
                    )
                  ],
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
                  const SizedBox(height: 32),
                  TextFormFieldWidget(
                    text: state.firstname,
                    hint: "What is your first name?",
                    label: "First Name *",
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.user),
                    onChanged: (text) => context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.firstnameChanged(firstname: text)),
                    enabled: state.isEditing,
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    text: state.lastname,
                    hint: "What is your last name?",
                    label: "Last Name *",
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.user),
                    onChanged: (text) => context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.lastnameChanged(lastname: text)),
                    enabled: state.isEditing,
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    text: state.email,
                    hint: "What is your email? *",
                    label: "Email",
                    validator: getIt<Validator>().validateEmail,
                    suffixIcon: const Icon(LineAwesomeIcons.at),
                    onChanged: (text) => context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.emailChanged(email: text)),
                    enabled: state.isEditing,
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
                    enabled: state.isEditing,
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldWidget(
                    key: UniqueKey(),
                    text: CountryCode.fromCountryCode(state.countryCode).name,
                    hint: "What country are you currently in?",
                    label: "Country *",
                    readOnly: true,
                    validator: getIt<Validator>().validateName,
                    suffixIcon: const Icon(LineAwesomeIcons.globe),
                    prefixIcon: CountryCodePicker(
                      initialSelection: state.countryCode,
                      showDropDownButton: true,
                      showCountryOnly: true,
                      showOnlyCountryWhenClosed: true,
                      alignLeft: true,
                      onChanged: (countryCode) => context
                          .read<ProfileBloc>()
                          .add(ProfileEvent.countryChanged(
                              countryCode: countryCode.code!)),
                    ),
                    onTap: () => context
                        .read<ProfileBloc>()
                        .add(const ProfileEvent.countryDialogToggled()),
                    enabled: state.isEditing,
                  ),
                  const SizedBox(height: 32),
                  if (state.isEditing)
                    ButtonWidget(
                      onTap: state.updatedOption.getOrElse(() => false)
                          ? () => context.read<ProfileBloc>().add(
                              ProfileEvent.saveButtonPressed(formKey: _formKey))
                          : null,
                      label: "Save",
                    ),
                  if (state.isEditing) const SizedBox(height: 16),
                  if (state.isEditing)
                    ButtonWidget(
                      onTap: () {},
                      label: "Delete Account",
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary,
                      textColor:
                          Theme.of(context).colorScheme.error.withOpacity(0.75),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
