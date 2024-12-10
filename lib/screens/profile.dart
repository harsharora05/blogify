import 'package:blogify/widgets/profileTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg"),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Username",
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 94, 94, 94), fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "xyz@gmail.com",
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 94, 94, 94), fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileTile(
              icon: Icons.password,
              title: "Change Password",
            ),
            const SizedBox(
              height: 5,
            ),
            const ProfileTile(
              icon: Icons.lock,
              title: "Privacy Policy",
            ),
            const SizedBox(
              height: 5,
            ),
            const ProfileTile(
              icon: Icons.logout_rounded,
              title: "Logout",
            ),
          ],
        ),
      ),
    );
  }
}
