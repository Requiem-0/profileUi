import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;
  bool locationServices = true;
  bool pushNotifications = true;
  bool emailNotifications = true;
  bool smsAlerts = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
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
                      child: const Icon(Icons.chevron_left, size: 32, color: Colors.black87),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Settings & Privacy',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),

                // ACCOUNT SETTINGS Section
                const Text(
                  'ACCOUNT SETTINGS',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: Color(0xFF9E9E9E), letterSpacing: 1.2),
                ),
                const SizedBox(height: 15),
                
                // Edit Profile
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.person_outline_rounded, color: Colors.redAccent, size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Color(0xFFCFD8DC)),
                    ],
                  ),
                ),

                // Change Password
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.lock_outline_rounded, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Change Password',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Color(0xFFCFD8DC)),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // PREFERENCES Section
                const Text(
                  'PREFERENCES',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: Color(0xFF9E9E9E), letterSpacing: 1.2),
                ),
                const SizedBox(height: 15),

                // Dark Mode
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.dark_mode_outlined, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Dark Mode',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      Switch(
                        value: darkMode,
                        onChanged: (val) => setState(() => darkMode = val),
                        activeColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ),

                // Location Services
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.location_on_outlined, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Location Services',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      Switch(
                        value: locationServices,
                        onChanged: (val) => setState(() => locationServices = val),
                        activeColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ),

                // Language
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.language_outlined, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Language',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                            ),
                            Text(
                              'English (US)',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Color(0xFFCFD8DC)),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // NOTIFICATIONS Section
                const Text(
                  'NOTIFICATIONS',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: Color(0xFF9E9E9E), letterSpacing: 1.2),
                ),
                const SizedBox(height: 15),

                // Push Notifications
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.notifications_none_rounded, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Push Notifications',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      Switch(
                        value: pushNotifications,
                        onChanged: (val) => setState(() => pushNotifications = val),
                        activeColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ),

                // Email Notifications
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.mail_outline_rounded, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Email Notifications',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      Switch(
                        value: emailNotifications,
                        onChanged: (val) => setState(() => emailNotifications = val),
                        activeColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ),

                // SMS Alerts
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.chat_bubble_outline_rounded, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'SMS Alerts',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      Switch(
                        value: smsAlerts,
                        onChanged: (val) => setState(() => smsAlerts = val),
                        activeColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // LEGAL Section
                const Text(
                  'LEGAL',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: Color(0xFF9E9E9E), letterSpacing: 1.2),
                ),
                const SizedBox(height: 15),

                // Terms of Service
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.gavel_outlined, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Terms of Service',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Color(0xFFCFD8DC)),
                    ],
                  ),
                ),

                // Privacy Policy
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFF0F0F0)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 8, offset: const Offset(0, 4))],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: const Color(0xFFF8F9FA), borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.shield_outlined, color: Color(0xFF37474F), size: 24),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF263238)),
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Color(0xFFCFD8DC)),
                    ],
                  ),
                ),
                
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
