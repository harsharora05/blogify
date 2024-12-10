import 'package:blogify/data/post_data.dart';
import 'package:blogify/screens/display_post.dart';
import 'package:blogify/widgets/PopularPostCard.dart';
import 'package:blogify/widgets/RecentPostCard.dart';
import 'package:blogify/widgets/drawerHome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerHome(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Blogify",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          elevation: 10,
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Popular Posts",
                style: GoogleFonts.notoSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: dummyPosts.length,
                  itemBuilder: (context, index) {
                    final post = dummyPosts[index];
                    return Container(
                      padding: const EdgeInsets.all(5),
                      height: double.infinity,
                      width: 200,
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Displaypost(
                                post: post,
                              );
                            }));
                          },
                          child: PopularPostCard(post: post)),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recently Updated",
                style: GoogleFonts.notoSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: tags.length,
                itemBuilder: (context, index) {
                  final tag = tags[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(label: Text(tag)),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: dummyPosts.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final post = dummyPosts[index];
                    return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Displaypost(
                              post: post,
                            );
                          }));
                        },
                        child: RecentPostCard(post: post));
                  }),
            )
          ],
        ));
  }
}
