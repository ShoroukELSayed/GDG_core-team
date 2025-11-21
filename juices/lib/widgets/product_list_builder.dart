import 'package:flutter/material.dart';
import 'package:juices/models/juice_model.dart';
import 'package:juices/services/juice_service.dart';
import 'package:juices/widgets/product_list.dart';

class ProductListBuilder extends StatefulWidget {
  const ProductListBuilder({super.key});

  @override
  State<ProductListBuilder> createState() => _ProductListBuilderState();
}

class _ProductListBuilderState extends State<ProductListBuilder> {
  late Future<List<JuiceModel>> future;
  @override
  void initState() {
    super.initState();
    future = JuiceService().getJuice();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<JuiceModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ProductList(juices: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text('oops was an erorr ,try later'));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
