import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/utls/styels.dart';
import '../../data/model/product_model.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            product.title,
            style: Styels.title25.copyWith(fontSize: 16,color: Colors.black),
          ),
          subtitle: Text(
            product.description,
            style: Styels.title25.copyWith(fontSize: 12, color: Colors.grey),
            maxLines: 2,
          ),
          leading: CachedNetworkImage(
            height: 100,
            width: 50,
            fit: BoxFit.fill,
            imageUrl: product.image,
            errorWidget: (context, url, error) =>
            const Icon(Icons.error_outline_sharp),
            placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "\$'${product.price.toString()}",
              style: Styels.title25.copyWith(
                color: Colors.redAccent,
                fontSize: 10,
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.yellowAccent,
            ),
            SizedBox(
              width: 6.3,
            ),
            Text(
              "${product.rate.rate.toString()}",
              style: Styels.title25.copyWith(
                color: Colors.redAccent,
                fontSize: 10,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "(${product.rate.count})",
              style: Styels.title25.copyWith(
                color: Colors.redAccent,
                fontSize: 10,
              ),
            ),
          ],
        )
      ],
    );
  }
}
