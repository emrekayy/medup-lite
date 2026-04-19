import 'package:flutter/material.dart';

import '../models/medicine.dart';

/// Sepet — [cart] ile [HomeScreen] içindeki liste aynı referanstır.
class CartScreen extends StatefulWidget {
  final List<Medicine> cart;
  final void Function(int index) onRemoveAt;

  const CartScreen({
    super.key,
    required this.cart,
    required this.onRemoveAt,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _removeAt(int index) {
    widget.onRemoveAt(index);
    // HomeScreen altında olmadığı için burada da setState gerekir (liste aynı referans).
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cart = widget.cart;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: cart.isEmpty
          ? Center(
              child: Text(
                'Your cart is empty.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final item = cart[index];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 56,
                      height: 56,
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  title: Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    item.formattedPrice,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_outline),
                    tooltip: 'Remove',
                    onPressed: () => _removeAt(index),
                  ),
                );
              },
            ),
    );
  }
}
