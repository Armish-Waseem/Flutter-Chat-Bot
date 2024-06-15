import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  final DateTime currentDate = DateTime.now();

  PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Effective date: ${currentDate.year}-${currentDate.month}-${currentDate.day}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'At Sizzle and Spice Kitchen, we are committed to protecting the privacy of our customers. This Privacy Policy explains how we collect, use, disclose, and protect information that applies to our restaurant services, including our website, mobile app, and any other services provided by us.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Information We Collect',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'We may collect various types of information in order to provide and improve our restaurant services. This may include:',
            ),
            const SizedBox(height: 10.0),
            const Text(
                '- Information you provide to us when making reservations, placing orders, or otherwise using our services, such as your name, contact details, and payment information.'),
            const Text(
                '- Information collected automatically when you visit our website or use our mobile app, such as your IP address, device information, and browsing activity.'),
            const Text(
                '- Information we receive from third-party sources, such as social media platforms or business partners.'),
            const SizedBox(height: 20.0),
            const Text(
              'How We Use Your Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'We may use the information we collect for various purposes, including but not limited to:',
            ),
            const SizedBox(height: 10.0),
            const Text(
                '- Processing and fulfilling your orders and reservations.'),
            const Text(
                '- Personalizing your experience and providing tailored recommendations.'),
            const Text(
                '- Communicating with you about your orders, reservations, or promotions.'),
            const Text(
                '- Analyzing usage of our services and improving our offerings.'),
            const SizedBox(height: 20.0),
            const Text(
              'Information Sharing and Disclosure',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'We may share your information in the following situations:',
            ),
            const SizedBox(height: 10.0),
            const Text(
                '- With our employees and service providers who assist us in providing and improving our restaurant services.'),
            const Text(
                '- With your consent or at your direction, such as when you choose to post reviews or share content on our platforms.'),
            const Text(
                '- For legal purposes or to comply with applicable laws and regulations.'),
            const SizedBox(height: 20.0),
            const Text(
              'Security',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'We take appropriate measures to protect the information we collect from loss, misuse, and unauthorized access or disclosure. However, please note that no method of transmission over the internet or electronic storage is 100% secure.',
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Changes to This Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.',
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Contact Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'If you have any questions or suggestions about our Privacy Policy, please contact us at [Insert Contact Information].',
            ),
          ],
        ),
      ),
    );
  }
}
