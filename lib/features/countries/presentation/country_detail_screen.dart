import 'package:flutter/material.dart';
import 'package:siejkowska_m_task/common/task_strings.dart';
import 'package:siejkowska_m_task/features/countries/presentation/widgets/country_info_row.dart';
import 'package:siejkowska_m_task/models/country_basic.dart';

class CountriesDetailScreen extends StatelessWidget {
  final CountryBasic countryDetail;

  const CountriesDetailScreen({Key? key, required this.countryDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10,
          ),
          child: Column(
            children: [
              Text(
                countryDetail.flag ?? '',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Center(
                child: Text(
                  countryDetail.name?.official ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
              CountryInfoRow(
                  title: TaskStrings.capital,
                  info: countryDetail.capital?.first ?? TaskStrings.noInfo),
              CountryInfoRow(
                  title: TaskStrings.region,
                  info: countryDetail.region ?? TaskStrings.noInfo),
              CountryInfoRow(
                  title: TaskStrings.subregion,
                  info: countryDetail.subregion ?? TaskStrings.noInfo),
              CountryInfoRow(
                  title: TaskStrings.independent,
                  info: (countryDetail.independent ?? true)
                      ? TaskStrings.yes
                      : TaskStrings.no),
              CountryInfoRow(
                  title: TaskStrings.languages,
                  info: countryDetail.languages?.ara ?? TaskStrings.noInfo),
              CountryInfoRow(
                  title: TaskStrings.population,
                  info: countryDetail.population.toString()),
              CountryInfoRow(
                  title: TaskStrings.borderTo,
                  info: (countryDetail.borders != null)
                      ? countryDetail.borders!
                          .toString()
                          .replaceAll('[', '')
                          .replaceAll(']', '')
                      : TaskStrings.noInfo),
              CountryInfoRow(
                title: TaskStrings.currencies,
                info:
                    '${countryDetail.currencies?.mRU?.name ?? TaskStrings.noInfo}, symbol: ${countryDetail.currencies?.mRU?.name ?? TaskStrings.noInfo}',
              ),
            ],
          )),
    );
  }
}
