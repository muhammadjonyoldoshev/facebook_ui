import 'package:flutter/material.dart';
class FacebookPage extends StatefulWidget {
  static const id = "/facebook_page";
  const FacebookPage({Key? key}) : super(key: key);

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
            "facebook",
          style: TextStyle(
              color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 35,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                  Icons.camera_alt,
                color: Colors.grey,
                size: 35,
              ),
          )
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black,
            margin: const EdgeInsets.only(top: 0),
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 120,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/img_user_4.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          height: 46,
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.video_call,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.photo,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Photo", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.location_on,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check In", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10,),
            height: 200,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10,),
                makeStory(
                  storyImage: 'assets/images/img_story_5.png',
                  userImage: "assets/images/img_user_4.png",
                  userName: "User Five",
                ),
                makeStory(
                  storyImage: 'assets/images/img_story_4.png',
                  userImage: "assets/images/img_user_3.png",
                  userName: "User Four",
                ),
                makeStory(
                  storyImage: 'assets/images/img_story_3.png',
                  userImage: "assets/images/img_user_2.png",
                  userName: "User Three",
                ),
                makeStory(
                  storyImage: 'assets/images/img_story_2.png',
                  userImage: "assets/images/img_user_1.png",
                  userName: "User Two",
                ),
                makeStory(
                  storyImage: 'assets/images/img_story_1.png',
                  userImage: "assets/images/img_user_4.png",
                  userName: "User One",
                ),
              ],
            ),
          ),
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/img_story_2.png",
            feedTime: "1h ago",
            feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/img_user_2.png",
            feedImage2: "assets/images/img_user_4.png",
          ),
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/img_story_1.png",
            feedTime: "1h ago",
            feedText: "All the Lorem Ipsum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/img_user_4.png",
            feedImage2: "assets/images/img_user_3.png",
          ),
        ],
      ),
    );
  }
  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage2, feedImage}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Row(
                      children:[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(userName, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                            const SizedBox(height: 3,),
                            Text(feedTime, style: const TextStyle(fontSize: 15, color: Colors.grey),),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz, size: 30, color: Colors.grey,),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
                const SizedBox(height: 20,),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedImage),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              Expanded(
               child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedImage2),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Row(
                  children:[
                    makeLike(),
                    Transform.translate(
                        offset: const Offset(-5, 0),
                        child: makeLove()
                    ),
                    const SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            ],
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  }


