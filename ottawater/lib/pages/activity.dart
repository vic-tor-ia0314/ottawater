import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ottawater/core/theme/app_colors.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  String? selectedType;
  final ButtonStyle appButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.button,
    foregroundColor: AppColors.textcolor,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    minimumSize: const Size(120, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );

  void handleSelection(String type) {
    setState(() {
      selectedType = type;
    });
  }

  void submit() {
    if (selectedType == "good") {
      Navigator.pop(context, 0.1);
    } else if (selectedType == "bad") {
      Navigator.pop(context, -0.1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log Activity"),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () => handleSelection("good"),
                  style: appButtonStyle,
                  icon: const Icon(Icons.thumb_up, size: 24),
                  label: const Text(
                    "Good",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => handleSelection("bad"),
                  style: appButtonStyle,
                  icon: const Icon(Icons.thumb_down, size: 24),
                  label: const Text(
                    "Bad",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            if (selectedType == "good")
              Lottie.asset(
                'assets/animations/p1-animation.json',
                height: 150,
                repeat: true,
              ),

            if (selectedType == "bad")
              Lottie.asset(
                'assets/animations/n1-animation.json',
                height: 150,
                repeat: true,
              ),

            const SizedBox(height: 20),
            TextField(
              style: const TextStyle(
                color: AppColors.textcolor,
              ),
              decoration: InputDecoration(
                hintText: "Describe your activity...",
                hintStyle: TextStyle(
                  color: AppColors.textcolor.withOpacity(0.6),
                ),
                filled: true,
                fillColor: AppColors.button.withOpacity(0.1),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.button,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.button.withOpacity(0.5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.button,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: selectedType == null ? null : submit,
              style: appButtonStyle,
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}