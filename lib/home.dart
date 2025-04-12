import 'package:flutter/material.dart';
import 'widgets.dart';

// Start with some default medicines
const List<String> defaultMedicines = ["Omeprazole", "Paracetamol", "Lisinopril"];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Create a state variable for the medicines list
  List<MedicineItem> medicines = [
    MedicineItem(name: "Omeprazole", dosage: "1 pill, morning", time: "8:00 AM"),
    MedicineItem(name: "Paracetamol", dosage: "1 pill, as needed", time: "Every 6 hours"),
    MedicineItem(name: "Lisinopril", dosage: "1 pill, daily", time: "9:00 PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("MediMind", 
          style: TextStyle(
            color: Colors.green.shade700, 
            fontWeight: FontWeight.bold
          )
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.green.shade700, size: 28),
            onPressed: () {
              _showAddMedicineDialog(context);
            },
          ),
          SizedBox(width: 8),
        ],
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today, 23 March, 2025", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text("Date"),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ["THU 20", "FRI 21", "SAT 22", "SUN 23", "MON 24", "TUE 25"].map((e) {
                  bool isSelected = e == "SUN 23";
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.green.shade200 : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      e,
                      style: TextStyle(
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected ? Colors.green.shade800 : Colors.black87,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 12),
              Card(
                color: Colors.green[50],
                child: ListTile(
                  leading: Text("Medicine List", style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.green.shade200,
                    child: Icon(Icons.chevron_right, color: Colors.green.shade800),
                  ),
                ),
              ),
              // Display the medicines from our state list
              Expanded(
                child: ListView.builder(
                  itemCount: medicines.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.only(bottom: 8),
                      color: Colors.green[50],
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.green.shade100,
                          child: Icon(Icons.medication, color: Colors.green.shade700),
                        ),
                        title: Text(
                          medicines[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(medicines[index].dosage),
                        trailing: Text(
                          medicines[index].time,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade700,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TOP MEDICINE",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: Colors.green.shade800,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle see all action
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildTopMedicineCard("Omeprazole", "For acid reflux", Icons.heart_broken_outlined),
                    SizedBox(width: 12),
                    _buildTopMedicineCard("Paracetamol", "For fever & pain", Icons.healing_outlined),
                    SizedBox(width: 12),
                    _buildTopMedicineCard("Losartan", "For blood pressure", Icons.monitor_heart_outlined),
                    SizedBox(width: 12),
                    _buildTopMedicineCard("Amoxicillin", "Antibiotic", Icons.coronavirus_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void _showAddMedicineDialog(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController doseController = TextEditingController();
    String selectedTime = "9:00 AM";
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Medicine', 
            style: TextStyle(
              color: Colors.green.shade700,
              fontWeight: FontWeight.bold
            )
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Medicine Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade700),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: doseController,
                  decoration: InputDecoration(
                    labelText: 'Dosage (e.g., 1 pill daily)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade700),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.green.shade700),
                    SizedBox(width: 8),
                    Text('Set Reminder Time', style: TextStyle(fontSize: 16)),
                    Spacer(),
                    TextButton(
                      onPressed: () async {
                        final TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        
                        if (time != null) {
                          // Format the time as a string
                          final String formattedTime = _formatTimeOfDay(time);
                          // Store the selected time
                          selectedTime = formattedTime;
                        }
                      },
                      child: Text(
                        'Select Time',
                        style: TextStyle(color: Colors.green.shade700),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel', style: TextStyle(color: Colors.grey)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
              ),
              onPressed: () {
                if (nameController.text.isNotEmpty) {
                  // Add the new medicine to our list
                  setState(() {
                    medicines.add(
                      MedicineItem(
                        name: nameController.text,
                        dosage: doseController.text.isEmpty ? "As directed" : doseController.text,
                        time: selectedTime,
                      )
                    );
                  });
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add Medicine', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }
  
  String _formatTimeOfDay(TimeOfDay time) {
    // Convert to 12-hour format with AM/PM
    final int hour = time.hourOfPeriod;
    final int minute = time.minute;
    final String period = time.period == DayPeriod.am ? 'AM' : 'PM';
    
    return '${hour == 0 ? 12 : hour}:${minute.toString().padLeft(2, '0')} $period';
  }

  Widget _buildTopMedicineCard(String name, String description, IconData icon) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green.shade100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green.shade100,
                child: Icon(icon, color: Colors.green.shade700, size: 20),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.green.shade300),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {
                  // Implement favorite functionality
                },
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.green.shade800,
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "Frequently Used",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Define a class to hold medicine information
class MedicineItem {
  final String name;
  final String dosage;
  final String time;
  
  MedicineItem({required this.name, required this.dosage, required this.time});
}
