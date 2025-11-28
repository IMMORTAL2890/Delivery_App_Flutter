import 'package:flutter/material.dart';
import 'document.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  final ScrollController _scrollController = ScrollController();
  final bool _isLoading = false;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // void _handleSubmit() async {
  //   setState(() {
  //     _isLoading = true;
  //   });

  //   // Hide keyboard
  //   FocusScope.of(context).unfocus();

  //   // Simulate processing (remove this if not needed)
  //   await Future.delayed(const Duration(milliseconds: 500));

  //   setState(() {
  //     _isLoading = false;
  //   });

  //   // Navigate to next screen
  //   if (mounted) {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const Document()),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Personal information',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter the details below so we can get to know and serve you better",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // First Name
              const Text(
                'First Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Please enter first name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Last Name
              const Text(
                'Last Name',
                
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Please enter last name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Father's Name
              const Text(
                'Father\'s Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Please enter father\'s name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Date of Birth
              const Text(
                'Date of Birth',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'dd-mm-yyyy',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Primary Mobile Number
              const Text(
                'Primary Mobile Number',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: '+91 9999988888',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // WhatsApp Number
              const Text(
                'WhatsApp Number',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: '+91 9999988888',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // City
              const Text(
                'City',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'e.g. Bangalore',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Complete Address
              const Text(
                'Complete Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.text,
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: 'Search address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 12),

              // Language
              const Text(
                'Language you know',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Select one or multiple',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Profile Picture Section
              const Text(
                "Your Profile Picture",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.camera, color: Colors.redAccent),
                        label: const Text(
                          'Upload Photo',
                          style: TextStyle(color: Colors.redAccent, height: 2),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.redAccent),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text('Referral code (Optional)'),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Enter referral code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Document()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    disabledBackgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: _isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : const Text(
                          'Submit',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
