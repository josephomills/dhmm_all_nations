import 'package:all_nations/application/app/app_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/main.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/auth_header_builder.widget.dart';
import 'package:all_nations/presentation/widgets/text_form_field.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bye_bye_localization/bye_bye_localization.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

@RoutePage()
class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check the locale of the phone and set as prefered
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 32),
          children: [
            authHeaderBuilder(context, const BoxConstraints(), 0),
            const SizedBox(height: 76),
            TranslatedText(
              "Please select your language...",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            buildLangaugesDropdown(context),
            const SizedBox(height: 24),
            Center(
              child: TextFormFieldWidget(
                key: UniqueKey(),
                text: "",
                hint: "Please select your lannguage",
                label: "Language",
                readOnly: true,
                suffixIcon: const Icon(LineAwesomeIcons.globe),
                prefixIcon: BlocBuilder<AppBloc, AppState>(
                  bloc: getIt<AppBloc>(),
                  builder: (context, state) {
                    return CountryCodePicker(
                      initialSelection: state.flag,
                      showDropDownButton: true,
                      showCountryOnly: true,
                      alignLeft: true,
                      showOnlyCountryWhenClosed: true,
                      // builder: (countryode) {},
                      countryFilter: const ["us", "fr", "es", "pt"],
                      onChanged: (countryCode) {
                        print("------------- ${countryCode.code} ------------");

                        String? code;
                        if (countryCode.code == "us") {
                          code = "en";
                        } else {
                          print("heeeeeeeeeeeeeeerrrrrrrrrrrrrreeeeeeeeeee");
                          code = countryCode.code?.toLowerCase() ?? "en";
                        }
                        // set app language
                        getIt<AppBloc>().add(
                          AppEvent.translatedToLanguage(
                            translatedTo: code,
                          ),
                        );
                        context.router.replaceAll([const IndexRoute()]);

                        AllNations.restartApp(context);
                      },
                      builder: (countryCode) {
                        String language = "English";
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Row(
                            children: [
                              Image.asset(
                                CountryCode.fromCountryCode(
                                            countryCode?.code ?? "us")
                                        .flagUri ??
                                    "flags/${countryCode?.code ?? "us"}.png",
                                package: 'country_code_picker',
                                width: 32,
                              ),
                              const SizedBox(width: 24),
                              Text(language),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLangaugesDropdown(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: getIt<AppBloc>(),
      builder: (context, state) {
        return DropdownButtonFormField<String>(
          value: state.translateTo,
          items: AllNations.getSupportedLocales.map(
            (locale) {
              String flag = locale.languageCode.toLowerCase() == "en"
                  ? "gb"
                  : locale.languageCode.toLowerCase();
              return DropdownMenuItem<String>(
                value: locale.languageCode,
                child: Row(
                  children: [
                    Image.asset(
                      "flags/$flag.png",
                      package: 'country_code_picker',
                      width: 32,
                    ),
                    const SizedBox(width: 24),
                    Text(locale.languageCode),
                  ],
                ),
              );
            },
          ).toList(),
          onChanged: (language) {
            // set app language
            getIt<AppBloc>().add(
              AppEvent.translatedToLanguage(
                translatedTo: language,
              ),
            );
            context.router.replaceAll([const IndexRoute()]);

            AllNations.restartApp(context);
          },
        );
      },
    );
  }
}
