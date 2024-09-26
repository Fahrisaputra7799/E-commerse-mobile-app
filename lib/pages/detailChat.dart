import 'package:flutter/material.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({super.key});

  @override
  _DetailChatState createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  final List<String> _messages = []; // Menyimpan daftar pesan
  final TextEditingController _controller = TextEditingController(); // Kontrol input teks

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(_controller.text); // Menambahkan pesan baru ke daftar
      });
      _controller.clear(); // Menghapus input setelah mengirim
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 136, 3),
        title: 
        const Text(
          'Toko Bakso',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, 'chat');
        }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body: Container(
        color: const Color(0xFFF5F5F5), // Warna latar belakang
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 136, 3),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          _messages[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Ketik pesan...',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: _sendMessage, // Mengirim pesan saat ditekan
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
