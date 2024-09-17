import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            // Profile Picture
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcbg4LiCOIEfGq-BD-j-x_EDpsXEnzmVuF1g&s'), // Replace with your image URL
            ),
            SizedBox(height: 20),
            // Name
            Text(
              'Jane Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Email
            Text(
              'jone.doe@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            // Bio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'jane is a professional beauty enthusiast with a deep passion for skincare,makeup,artistry and holistic wellness.she has worked with top branded,influencers and clients,helping them discover their unique beauty and self confidence.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: 30),
            // Edit Profile Button
            ElevatedButton.icon(
              onPressed: () {
                // Define the action for editing profile here
                // For example, navigate to the edit profile page
              },
              icon: Icon(Icons.edit),
              label: Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            // Logout Button
            ElevatedButton.icon(
              onPressed: () {
                // Define the action for logout here
                // For example, clear user session and navigate to login screen
              },
              icon: Icon(Icons.logout),
              label: Text('Logout'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
                // Set button color to red for logout
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
