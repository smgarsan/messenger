import 'package:flutter/material.dart';
import 'package:messenger/ui/view_models/logout_view_model.dart';
import '../widgets/top_bar.dart';
import '../widgets/chat_tile.dart';
import '../widgets/bottom_bar.dart';

final List<Map<String, dynamic>> contacts = [
  {
    'name': 'Sunday Brunch 12',
    'message': 'How about Joe\'s Diner?',
    'time': '8:18 PM',
    'unread': 9,
  },
  {
    'name': 'Katherine',
    'message': 'I\'ll take him to the vet.',
    'time': '7:30 PM',
    'unread': 0,
  },
  {
    'name': 'Tennis club 8',
    'message': 'Are we still on for tomorrow?',
    'time': 'Yesterday',
    'unread': 25,
  },
  {
    'name': 'Julia, Jeff 3',
    'message': 'Spain.jpg',
    'time': 'Mar 25',
    'unread': 99,
  },
];

class ChatsScreen extends StatelessWidget {
  final LogoutViewModel viewModel;

  const ChatsScreen({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: TopBar(viewModel: viewModel,),
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 16.0),
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ChatTile(contact: contacts[index]);
        },
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
