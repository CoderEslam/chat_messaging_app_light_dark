import 'package:chat_messaging_app_light_dark/constants.dart';
import 'package:chat_messaging_app_light_dark/models/ChatMessage.dart';
import 'package:chat_messaging_app_light_dark/screens/messages/components/message.dart';
import 'package:flutter/material.dart';

import 'chat_input_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}
