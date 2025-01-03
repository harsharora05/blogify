import 'package:blog/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentPostCard extends StatelessWidget {
  const RecentPostCard({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(post.photo), fit: BoxFit.cover)),
              ),
            ),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            post.category,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.acme(
                                color: const Color.fromARGB(255, 104, 103, 103),
                                fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite_border_outlined),
                        )
                      ],
                    ),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 12.0),
                            width: 170,
                            child: Text(
                              softWrap: true,
                              post.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.acme(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 12.0),
                            width: 120,
                            child: Text(
                              softWrap: true,
                              post.username,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                              style: GoogleFonts.acme(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ]),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
