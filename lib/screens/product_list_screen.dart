import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/product.dart';
import '../widgets/floating_cart_button.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Vegetables'),
              Tab(text: 'Lifestyle'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildProductGrid(context, 'vegetables'),
            _buildProductGrid(context, 'lifestyle'),
          ],
        ),
        floatingActionButton: const FloatingCartButton(),
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context, String category) {
    final products = _getProductsByCategory(category);

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[200],
                        child: const Center(
                          child: Icon(Icons.image_not_supported, size: 40),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '₹${product.price.toStringAsFixed(2)}/${product.unit}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF34A853),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            Provider.of<CartProvider>(context, listen: false)
                                .addItem(product);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${product.name} added to cart'),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<Product> _getProductsByCategory(String category) {
    // Sample products - replace with your actual data
    final List<Product> allProducts = [
      // Vegetables
      Product(
        id: '1',
        name: 'Fresh Tomatoes',
        description: 'Organic, vine-ripened tomatoes',
        price: 2.99,
        imageUrl:
            'https://images.unsplash.com/photo-1518977676601-b53f82aba655',
        category: 'vegetables',
        unit: 'kg',
      ),
      Product(
        id: '2',
        name: 'Organic Carrots',
        description: 'Fresh, crunchy carrots',
        price: 1.99,
        imageUrl:
            'https://images.unsplash.com/photo-1447175008436-0541c9e0e0e3',
        category: 'vegetables',
        unit: 'kg',
      ),
      Product(
        id: '3',
        name: 'Green Bell Peppers',
        description: 'Crisp and sweet peppers',
        price: 3.49,
        imageUrl:
            'https://images.unsplash.com/photo-1563642421748-5047b658a1e4',
        category: 'vegetables',
        unit: 'kg',
      ),
      Product(
        id: '4',
        name: 'Fresh Broccoli',
        description: 'Nutritious and delicious',
        price: 2.49,
        imageUrl:
            'https://images.unsplash.com/photo-1584270354949-c26b0d5b4a0c',
        category: 'vegetables',
        unit: 'kg',
      ),
      Product(
        id: '5',
        name: 'Organic Spinach',
        description: 'Fresh leafy greens',
        price: 3.99,
        imageUrl:
            'https://images.unsplash.com/photo-1576045057995-568f588f82fb',
        category: 'vegetables',
        unit: 'kg',
      ),
      Product(
        id: '6',
        name: 'Sweet Potatoes',
        description: 'Rich in vitamins and minerals',
        price: 1.99,
        imageUrl:
            'https://images.unsplash.com/photo-1563642421748-5047b658a1e4',
        category: 'vegetables',
        unit: 'kg',
      ),

      // Lifestyle Products
      Product(
        id: '7',
        name: 'Organic Gardening Kit',
        description: 'Complete kit for home gardening',
        price: 29.99,
        imageUrl:
            'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=500&h=500&fit=crop',
        category: 'lifestyle',
        unit: 'piece',
      ),
      Product(
        id: '8',
        name: 'Compost Bin',
        description: 'Eco-friendly composting solution',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=500&h=500&fit=crop',
        category: 'lifestyle',
        unit: 'piece',
      ),
      Product(
        id: '9',
        name: 'Watering Can',
        description: 'Durable metal watering can',
        price: 19.99,
        imageUrl:
            'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=500&h=500&fit=crop',
        category: 'lifestyle',
        unit: 'piece',
      ),
      Product(
        id: '10',
        name: 'Garden Tools Set',
        description: 'Essential tools for gardening',
        price: 39.99,
        imageUrl:
            'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=500&h=500&fit=crop',
        category: 'lifestyle',
        unit: 'set',
      ),
      Product(
        id: '11',
        name: 'Plant Pots',
        description: 'Set of 3 ceramic pots',
        price: 24.99,
        imageUrl:
            'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=500&h=500&fit=crop',
        category: 'lifestyle',
        unit: 'set',
      ),
      Product(
        id: '12',
        name: 'Organic Seeds Pack',
        description: 'Variety of vegetable seeds',
        price: 14.99,
        imageUrl:
            'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?w=500&h=500&fit=crop',
        category: 'lifestyle',
        unit: 'pack',
      ),
    ];

    return allProducts
        .where((product) => product.category == category)
        .toList();
  }
}
