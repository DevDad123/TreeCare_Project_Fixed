import 'package:a/consts.dart';
import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  List<ChatMessage> messages = [];
  bool isLoading = false;

  ChatUser currentUser = ChatUser(id: "1", firstName: "Dev", lastName: "Dad");
  ChatUser geminiUser = ChatUser(
    id: "2",
    firstName: "TreeCare",
    lastName: "Support",
    profileImage: "https://i.postimg.cc/BvW7kD7f/485044326-1686328468644731-6036889734361906-n.jpg",
  );

  @override
  void initState() {
    super.initState();
    Gemini.init(apiKey: GEMINI_API_KEY);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(child: _buildChat()),
          if (isLoading)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(color: Colors.white),
            ),
        ],
      ),
    );
  }

  Widget _buildChat() {
    return DashChat(
      currentUser: currentUser,
      onSend: _sendMessages,
      messages: messages,
      messageOptions: MessageOptions(
        currentUserContainerColor: Colors.grey,
        currentUserTextColor: Colors.white,
      ),
    );
  }

  void _sendMessages(ChatMessage chatMessage) async {
    setState(() {
      messages.insert(0, chatMessage);
      isLoading = true;
    });

    String botResponse = await _generateResponse(chatMessage.text);

    ChatMessage botMessage = ChatMessage(
      text: botResponse,
      user: geminiUser,
      createdAt: DateTime.now(),
    );

    setState(() {
      messages.insert(0, botMessage);
      isLoading = false;
    });
  }

  Future<String> _generateResponse(String userMessage) async {
    try {
      final response = await Gemini.instance.text(userMessage);
      return response?.output ?? "I didn't understand that.";
    } catch (e) {
      return "Error: ${e.toString()}";
    }
  }
}
