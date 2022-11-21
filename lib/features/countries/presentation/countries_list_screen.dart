import 'package:flutter/material.dart';
import 'package:siejkowska_m_task/common/task_strings.dart';
import 'package:siejkowska_m_task/features/countries/presentation/country_detail_screen.dart';
import 'package:siejkowska_m_task/models/country_basic.dart';

class CountriesListScreen extends StatefulWidget {
  final List<CountryBasic> list;

  const CountriesListScreen({Key? key, required this.list}) : super(key: key);

  @override
  State<CountriesListScreen> createState() => _CountriesListScreenState();
}

class _CountriesListScreenState extends State<CountriesListScreen> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        child: ListView.builder(
            itemCount: widget.list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CountriesDetailScreen(
                      countryDetail: widget.list[index],
                    ),
                  ),
                ),
                leading: Text(
                  widget.list[index].flag ?? '',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                title: Text(
                  '${TaskStrings.country}${widget.list[index].name?.official ?? ''}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                subtitle: Text(
                  '${TaskStrings.capital}${widget.list[index].capital?.first ?? TaskStrings.noInfo}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
