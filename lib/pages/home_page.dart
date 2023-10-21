import 'package:flutter/material.dart';
import 'package:flutter_via_cep/controller/home_controler.dart';
import 'package:flutter_via_cep/shared/repositories/cep_repository.dart';
import 'package:flutter_via_cep/shared/services/cep_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController homeController;

  @override
  void initState() {
    CepService service = CepService();
    CepRepository repository = CepRepository(cepService: service);
    homeController = HomeController(cepRepository: repository);
    // getValuesOnStart();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  getValuesOnStart() async {
    print('get values');
    await homeController.searchCep('17511403');
    print(homeController.cepItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('homePage'),
      ),
    );
  }
}
