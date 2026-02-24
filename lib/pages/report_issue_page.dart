import 'package:flutter/material.dart';

class ReportIssuePage extends StatefulWidget {
  const ReportIssuePage({super.key});

  @override
  State<ReportIssuePage> createState() => _ReportIssuePageState();
}

class _ReportIssuePageState extends State<ReportIssuePage> {
  // Selection state for checkboxes
  final Map<String, bool> _issues = {
    'Items missing': false,
    'Cold food': false,
    'Spilled order': false,
    'Wrong item received': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.chevron_left, size: 32, color: Colors.black),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Report an issue',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // Description
                const Text(
                  'What went wrong with your order? Select all that apply to help us resolve it quickly.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 30),

                // Issues List (Inlined as requested)
                // Items missing
                GestureDetector(
                  onTap: () => setState(() => _issues['Items missing'] = !_issues['Items missing']!),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBFBFB),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Items missing',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                        Icon(
                          _issues['Items missing']! ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: _issues['Items missing']! ? Colors.redAccent : const Color(0xFFE0E0E0),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),

                // Cold food
                GestureDetector(
                  onTap: () => setState(() => _issues['Cold food'] = !_issues['Cold food']!),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBFBFB),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Cold food',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                        Icon(
                          _issues['Cold food']! ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: _issues['Cold food']! ? Colors.redAccent : const Color(0xFFE0E0E0),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),

                // Spilled order
                GestureDetector(
                  onTap: () => setState(() => _issues['Spilled order'] = !_issues['Spilled order']!),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBFBFB),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Spilled order',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                        Icon(
                          _issues['Spilled order']! ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: _issues['Spilled order']! ? Colors.redAccent : const Color(0xFFE0E0E0),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),

                // Wrong item received
                GestureDetector(
                  onTap: () => setState(() => _issues['Wrong item received'] = !_issues['Wrong item received']!),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFBFBFB),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wrong item received',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                        Icon(
                          _issues['Wrong item received']! ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: _issues['Wrong item received']! ? Colors.redAccent : const Color(0xFFE0E0E0),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // Section Title: DESCRIBE YOUR ISSUE
                const Text(
                  'DESCRIBE YOUR ISSUE',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF9E9E9E),
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 15),

                // Description TextField
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFBFBFB),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const TextField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: 'Tell us more about the problem...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // Upload Photo Button (Using a Container with BoxDecoration for dashed border)
                // Note: Standard Flutter doesn't have a direct "dashed border" property,
                // emulating it with a CustomPaint or just a simple light-colored border for this "static" UI.
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFE0E0E0), width: 1.5, style: BorderStyle.solid),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.camera_alt_rounded, color: Colors.blueGrey[400], size: 28),
                      const SizedBox(height: 8),
                      Text(
                        'Upload Photo',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    'Photos help us process your request faster',
                    style: TextStyle(fontSize: 12, color: Colors.blueGrey[200]),
                  ),
                ),
                const SizedBox(height: 40),

                // Submit Report Button
                Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE02E23),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFE02E23).withOpacity(0.25),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Submit Report',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
