import 'package:flutter/material.dart';
import 'package:pets/models/Appointment.dart';

import 'Button.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Images/Dr.jpg'),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dr. Sarah Drue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.star), color: Colors.amber,)
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Amman, Abdoun',style: TextStyle(fontSize: 16,color: Color(0xff8F6FC2)),),
                      Text('+962-7987 56 435',style: TextStyle(fontSize: 16,color: Color(0xff8F6FC2)),),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sarah@vet.com',style: TextStyle(fontSize: 16,color: Color(0xff8F6FC2)),)
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('5 years experience ~ Worked in LA for 3 years\n diploma in veterinary medicine from UK.\n If you want your pet to be smothered with love\n and joy you found the right place!',style: TextStyle(fontSize: 15,color: Colors.black),),
                    ],
                  ),
                  SizedBox(height: 100),
                  ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Appointment()));
                    },
                    child: const Text('Make Reservation', style: TextStyle(color: Colors.white, fontSize: 20)),
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

