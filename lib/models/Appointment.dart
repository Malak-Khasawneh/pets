import 'package:flutter/material.dart';
import 'Button.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  bool _isChecked = false;

  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    ))!;
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = (await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ))!;
    if (picked != null && picked != selectedTime)
      setState(() {
        selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                  const Text(
                    'Reserve your Appointment',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Enter your Pets type'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Enter your Pets name'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Enter your Pets age'),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Enter your Pets Gender',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        checkColor: Color(0xff8F6FC2),
                      ),
                      const Text('Female', style: TextStyle(color: Colors.grey), textAlign: TextAlign.left),
                      const SizedBox(width: 100.0),
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        checkColor: Color(0xff8F6FC2),
                      ),
                      const Text('Male', style: TextStyle(color: Colors.grey), textAlign: TextAlign.right),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pick Date',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () => _selectDate(context),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pick Time',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.access_time),
                            onPressed: () => _selectTime(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                    SizedBox(height: 80),
                  ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {
                      // Implement logic to save edited profile
                      Navigator.pop(context); // Navigate back to the profile page
                    },
                    child: const Text('Confirm', style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
