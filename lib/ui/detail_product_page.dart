import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_appbar.dart';
import 'package:flutter_application_1/utils/ecommerce_template.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key, required this.product});
  final Product product;
  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  Product get product => widget.product;
  String? selectedImageUrl;
  String? SelectedSize;
  @override
  void initState() {
    selectedImageUrl = product.imageUrls.first;
    SelectedSize = product.sizes?.first;
    super.initState();
  }

  void setSelectedImageUrl(String url) {
    setState(() {
      selectedImageUrl = url;
    });
  }

  void setSelectedSize(String size) {
    setState(() {
      SelectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> imagePreviws = product.imageUrls
        .map(
          (url) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () => setSelectedImageUrl(url),
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: selectedImageUrl == url
                      ? Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1.75)
                      : null,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(
                  url,
                ),
              ),
            ),
          ),
        )
        .toList();

    List<Widget> sizeSelectionWidgets = product.sizes
            ?.map(
              (s) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    setSelectedSize(s);
                  },
                  child: Container(
                    height: 42,
                    width: 38,
                    decoration: BoxDecoration(
                      color: SelectedSize == s
                          ? Theme.of(context).colorScheme.secondary
                          : null,
                      border: Border.all(
                        color: Colors.grey[350]!,
                        width: 1.25,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        s,
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            color: SelectedSize == s ? Colors.white : null),
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList() ??
        [];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .35,
            color: kGreyBackground,
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.network(
                    selectedImageUrl!,
                    fit: BoxFit.cover,
                    color: kGreyBackground,
                    colorBlendMode: BlendMode.multiply,
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imagePreviws,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "\$" + product.cost.toString(),
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    product.description ??
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis purus laoreet, efficitur libero vel, feugiat ante. Vestibulum tempor, ligula.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  if (sizeSelectionWidgets.isNotEmpty) ...[
                    Text(
                      "Size",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: sizeSelectionWidgets,
                    ),
                  ],
                  const Spacer(),
                  Center(
                    child: CallToActionButton(
                      onPressed: () => cart.add(
                        OrderItem(
                          product: product,
                          selectedSize: SelectedSize,
                        ),
                      ),
                      labelText: "Add to Cart",
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
