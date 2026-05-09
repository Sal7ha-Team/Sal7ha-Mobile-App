import 'package:flutter/material.dart';
import 'widgets/change_service_screen.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  int _selectedTab = 0;
  double _priceFrom = 0;
  double _locationRadius = 15;
  String _selectedService = 'Electrical Fixtures';

  final List<String> _ratingOptions = ['5', '4', '3', '>3'];
  String _selectedRating = '5';

  final List<String> _tagOptions = ['Expert', 'Top-rated', 'Trusted'];
  String _selectedTag = 'Expert';

  final List<String> _languageOptions = [
    'Arabic',
    'English',
  ];
  String _selectedLanguage = 'English';
  final List<String> _sortOptions = [
    'Highest rated',
    'Relevance',
    'Popularity',
    'Availability',
    'Highest price per hour',
    'Lowest price per hour',
  ];
  String _selectedSort = 'Highest rated';

  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();

  static const Color _primary = Color(0xFFF5A623);

  @override
  void dispose() {
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: const Text(
          'Filters',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          _buildTabToggle(),
          Expanded(
            child: _selectedTab == 0 ? _buildFilterTab() : _buildSortByTab(),
          ),
          _buildConfirmButton(),
        ],
      ),
    );
  }
  Widget _buildTabToggle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            _tabButton('Filter', 0),
            _tabButton('Sort By', 1),
          ],
        ),
      ),
    );
  }

  Widget _tabButton(String label, int index) {
    final isActive = _selectedTab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => _selectedTab = index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          // margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: isActive ? _primary : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black54,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionLabel('Price per hour (USD)'),
          const SizedBox(height: 10),
          _buildPriceInputs(),
          const SizedBox(height: 8),
          _buildPriceSlider(),
          const SizedBox(height: 20),
          _sectionLabel('Location radius'),
          const SizedBox(height: 8),
          _buildRadiusSlider(),
          const SizedBox(height: 20),
          _sectionLabel('Change Service'),
          const SizedBox(height: 8),
          _buildChangeServiceTile(),
          const SizedBox(height: 20),
          _sectionLabel('Rating'),
          const SizedBox(height: 10),
          _buildChipRow(_ratingOptions, _selectedRating,
                  (v) => setState(() => _selectedRating = v)),
          const SizedBox(height: 20),
          _sectionLabel('Tags'),
          const SizedBox(height: 10),
          _buildChipRow(_tagOptions, _selectedTag,
                  (v) => setState(() => _selectedTag = v)),
          const SizedBox(height: 20),
          _sectionLabel('Languages'),
          const SizedBox(height: 10),
          _buildLanguageChips(),
          const SizedBox(height: 20),
          _sectionLabel('Availability'),
          const SizedBox(height: 8),
          _buildAvailabilityPlaceholder(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _sectionLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildPriceInputs() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 44,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFD0D0D0)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              cursorHeight: 25,
              controller: _fromController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'From',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 44,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFD0D0D0)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              cursorHeight: 25,
              controller: _toController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'To',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceSlider() {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: _primary,
        inactiveTrackColor: const Color(0xFFE0E0E0),
        thumbColor: _primary,
        overlayColor: _primary.withValues(alpha: 0.2),
        trackHeight: 4,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
      ),
      child: Slider(
        min: 0,
        max: 500,
        value: _priceFrom,
        onChanged: (v) => setState(() => _priceFrom = v),
      ),
    );
  }

  Widget _buildRadiusSlider() {
    return Row(
      children: [
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: _primary,
              inactiveTrackColor: const Color(0xFFE0E0E0),
              thumbColor: _primary,
              overlayColor: _primary.withValues(alpha: 0.2),
              trackHeight: 4,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
            ),
            child: Slider(
              min: 1,
              max: 100,
              value: _locationRadius,
              onChanged: (v) => setState(() => _locationRadius = v),
            ),
          ),
        ),
        Text(
          '${_locationRadius.round()} km',
          style: const TextStyle(fontSize: 13, color: Colors.black87),
        ),
      ],
    );
  }

  Widget _buildChangeServiceTile() {
    return GestureDetector(
      onTap: () async {
        final result = await Navigator.push<String>(
          context,
          MaterialPageRoute(
            builder: (_) =>
                ChangeServiceScreen(selectedService: _selectedService),
          ),
        );
        if (result != null) {
          setState(() => _selectedService = result);
        }
      },
      child: Container(
        padding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _selectedService,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const Icon(Icons.chevron_right, color: Colors.black54),
          ],
        ),
      ),
    );
  }

  Widget _buildChipRow(List<String> options, String selected, ValueChanged<String> onSelect) {
    return Wrap(
      spacing: 8,
      children: options
          .map((o) => _filterChip(o, o == selected, () => onSelect(o)))
          .toList(),
    );
  }

  Widget _buildLanguageChips() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _languageOptions
          .map((lang) => _filterChip(
          lang, lang == _selectedLanguage,
              () => setState(() => _selectedLanguage = lang)))
          .toList(),
    );
  }
  Widget _filterChip(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        decoration: BoxDecoration(
          color: isSelected ? _primary : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isSelected ? _primary : const Color(0xFFD0D0D0),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight:
            isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildAvailabilityPlaceholder() {
    // Placeholder – can be expanded with a calendar/time picker
    return Container(
      height: 44,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD0D0D0)),
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFF9F9F9),
      ),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Text(
        'Select availability',
        style: TextStyle(fontSize: 13, color: Colors.grey),
      ),
    );
  }
  Widget _buildSortByTab() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: _sortOptions.asMap().entries.map((entry) {
            final index = entry.key;
            final option = entry.value;
            final isLast = index == _sortOptions.length - 1;
            return Column(
              children: [
                _buildSortOption(option),
                if (!isLast)
                  const Divider(height: 1, indent: 16, endIndent: 16),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
  Widget _buildSortOption(String label) {
    final isSelected = _selectedSort == label;
    return InkWell(
      onTap: () => setState(() => _selectedSort = label),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: _primary, width: 2),
              ),
              child: isSelected
                  ? Center(
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: _primary,
                  ),
                ),
              )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildConfirmButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _primary,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 0,
          ),
          onPressed: () {
            Navigator.maybePop(context);
          },
          child: const Text(
            'Confirm Choices',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
