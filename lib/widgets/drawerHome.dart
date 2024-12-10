import 'package:blogify/screens/add_post.dart';
import 'package:blogify/screens/favourites_post.dart';
import 'package:blogify/screens/profile.dart';
import 'package:blogify/widgets/drawerCards.dart';
import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      child: const Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg"),
                ),
                Text(
                  "UserName",
                  style: TextStyle(
                      fontFamily: AutofillHints.username,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 1,
                  color: Colors.black,
                )
              ],
            ),
          ),
          drawerWidget(
            ic: Icons.person_outlined,
            title: "Profile",
            screen: Profile(),
          ),
          SizedBox(
            height: 5,
          ),
          drawerWidget(
            ic: Icons.favorite_border,
            title: "Favourites",
            screen: FavouritePost(),
          ),
          SizedBox(
            height: 5,
          ),
          drawerWidget(
            ic: Icons.edit,
            title: "Write a Story",
            screen: Addpost(),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
