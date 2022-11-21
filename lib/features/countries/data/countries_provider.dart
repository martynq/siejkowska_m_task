import 'package:flutter/material.dart';
import 'package:siejkowska_m_task/models/country_basic.dart';
import 'package:siejkowska_m_task/services/country_service.dart';

class CountriesState extends ChangeNotifier {
  CountriesState() {
    getCountryList();
  }

  List<CountryBasic> _countryList = [];

  List<CountryBasic> get countryList => _countryList;

  Future<void> getCountryList() async {
    _countryList = await CountryService().getCountriesInfo();
    notifyListeners();
  }
}
