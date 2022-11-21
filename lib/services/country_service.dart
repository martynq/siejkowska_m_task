import "package:dio/dio.dart";
import 'package:siejkowska_m_task/models/country_basic.dart';

class CountryService {
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://restcountries.com/v3.1/'));
  final String _basePath = "all";

  Future<List<CountryBasic>> getCountriesInfo() async {
    Response response = await dio.get(
      _basePath,
    );

    return (response.data as List)
        .map((e) => CountryBasic.fromJson(e))
        .toList();
  }
}
