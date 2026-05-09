import 'package:flutter/material.dart';

class ChangeServiceScreen extends StatefulWidget {
  final String? selectedService;
  const ChangeServiceScreen({super.key, this.selectedService});

  @override
  State<ChangeServiceScreen> createState() => _ChangeServiceScreenState();
}

class _ChangeServiceScreenState extends State<ChangeServiceScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  static const Map<String, List<String>> _services = {
    'Oil Services': [
      'Engine Oil Change',
      'Oil Filter Replacement',
      'Synthetic Oil Service',
      'Conventional Oil Service',
    ],
    'Engine Services': [
      'Engine Diagnostics & Checkup',
      'Engine Overhaul / Rebuild',
      'Spark Plug Replacement',
      'Timing Belt / Chain Replacement',
    ],
    'Electrical Services': [
      'Electrical Diagnostics',
      'Automotive Electrical Repair',
      'Vehicle Electrical System Check',
      'Battery Replacement',
    ],
    'Brake Services': [
      'Brake Pad Replacement',
      'Brake Fluid Flush',
      'Rotor Resurfacing',
    ],
    'Transmission Services': [
      'Transmission Fluid Change',
      'Transmission Repair',
      'Clutch Replacement',
    ],
  };

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _buildFiltered();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: (v) => setState(() => _query = v.toLowerCase()),
                  decoration: const InputDecoration(
                    hintText: 'Search for services',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                children: filtered.entries.map((entry) {
                  return _buildCategory(entry.key, entry.value);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Map<String, List<String>> _buildFiltered() {
    if (_query.isEmpty) return _services;
    final result = <String, List<String>>{};
    _services.forEach((category, items) {
      final matching = items
          .where((s) => s.toLowerCase().contains(_query))
          .toList();
      if (matching.isNotEmpty) result[category] = matching;
    });
    return result;
  }

  Widget _buildCategory(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: items.map((service) => _buildChip(service)).toList(),
        ),
      ],
    );
  }

  Widget _buildChip(String label) {
    return GestureDetector(
      onTap: () => Navigator.pop(context, label),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFD0D0D0)),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 13, color: Colors.black87),
        ),
      ),
    );
  }
}
