import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utls/app_constants.dart';
import '../../core/utls/dummydata.dart';
import '../../core/utls/service_locator.dart';
import '../../core/utls/styels.dart';
import '../../domain/use_cases/get_all_products.dart';
import '../component/custom_appbar.dart';
import '../component/product_item.dart';
import '../controller/products/products_cubit.dart';
import '../controller/products/products_states.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..featchproductmodel(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppConstants.backgrouncolor,
          body: Column(
            children: [
              const CustomAppBar(),
              BlocBuilder<ProductCubit, ProductsState>(
                builder: (context, state) {
                  if (state is Succes_productState) {
                    return Expanded(
                      child: Container(
                        //padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:  BorderRadius.only(
                              topLeft:  Radius.circular(35),
                              topRight:  Radius.circular(35),
                              bottomLeft: Radius.circular(35),
                              bottomRight:Radius.circular(35),
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ListView.builder(
                            shrinkWrap: true,
                              itemCount: state.products.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: ProductItem(
                                    product: state.products[index],
                                  ),
                                );
                              }),
                        ),
                      ),
                    );
                  }
                  else if (state is Failure_productState) {
                    return Center(
                        child: Text(
                      state.error,
                      style: Styels.title25,
                    ));
                  }
                  else {
                    return const Center(child: CircularProgressIndicator(),);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
