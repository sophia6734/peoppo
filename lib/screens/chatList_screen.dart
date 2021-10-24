import 'package:flutter/material.dart';
import 'package:peoppo/components/conversationList.dart';
import 'package:peoppo/model/chatUser.dart';
import 'package:peoppo/components/profilePicList.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Shin-Chan",
        messageText: "嗨那邊的大姊姊",
        imagePath: "images/shin-chan.jpg",
        time: "Now"),
    ChatUsers(
        name: "大原ななこ",
        messageText: "你唱的屁屁歌真的很好聽",
        imagePath: "images/dayuan.jpg",
        time: "Now"),
    ChatUsers(
        name: "野原ひろし",
        messageText: "唉不想上班",
        imagePath: "images/yeyuan.jpg",
        time: "Now"),
    ChatUsers(
        name: "野原美冴",
        messageText: "你再說一次誰是歐巴桑(怒)",
        imagePath: "images/meiya.jpg",
        time: "Now"),
    ChatUsers(
        name: "妮妮",
        messageText: "是男人就要好好工作!",
        imagePath: "images/nini.jpg",
        time: "Now"),
    ChatUsers(
        name: "Shin-Chan",
        messageText: "嗨那邊的大姊姊",
        imagePath: "images/shin-chan.jpg",
        time: "Now"),
    ChatUsers(
        name: "大原ななこ",
        messageText: "你唱的屁屁歌真的很好聽",
        imagePath: "images/dayuan.jpg",
        time: "Now"),
    ChatUsers(
        name: "野原ひろし",
        messageText: "唉不想上班",
        imagePath: "images/yeyuan.jpg",
        time: "Now"),
    ChatUsers(
        name: "野原美冴",
        messageText: "你再說一次誰是歐巴桑(怒)",
        imagePath: "images/meiya.jpg",
        time: "Now"),
    ChatUsers(
        name: "妮妮",
        messageText: "是男人就要好好工作!",
        imagePath: "images/nini.jpg",
        time: "Now"),
    ChatUsers(
        name: "Shin-Chan",
        messageText: "嗨那邊的大姊姊",
        imagePath: "images/shin-chan.jpg",
        time: "Now"),
    ChatUsers(
        name: "大原ななこ",
        messageText: "你唱的屁屁歌真的很好聽",
        imagePath: "images/dayuan.jpg",
        time: "Now"),
  ];

  String dropdownValue = 'Recent';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peoppo'),
        centerTitle: true,
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Matches",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
                  child: SizedBox(
                    height: 70,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: chatUsers.length,
                      itemBuilder: (context, index) {
                        return ProfilePicList(
                          imagePath: chatUsers[index].imagePath,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Messages",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      /*
                      GestureDetector(
                        onTap: () => {print('11')},
                        child: Icon(
                          Icons.view_list_rounded,
                          size: 20,
                        ),
                      ),

                       */
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.view_list_rounded),
                        iconSize: 24,
                        elevation: 16,
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['Recent', 'Nearby', 'Unread']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: chatUsers.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ConversationList(
                      name: chatUsers[index].name,
                      messageText: chatUsers[index].messageText,
                      imagePath: chatUsers[index].imagePath,
                      time: chatUsers[index].time,
                      isMessageRead: (index == 0 || index == 3) ? true : false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.red,
        unselectedItemColor: Theme.of(context).accentColor,
        //unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Channels"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_rounded),
            title: Text("Chats"),
          ),
        ],
      ),
    );
  }
}
