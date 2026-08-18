import 'package:flutter/material.dart';

void main() {
  runApp(const PerangkatPembelajaranApp());
}

class PerangkatPembelajaranApp extends StatelessWidget {
  const PerangkatPembelajaranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perangkat Pembelajaran Bahasa Jawa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perangkat Pembelajaran Bahasa Jawa'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Materi: Cerita Wayang Punakawan & Aksara Jawa (10 Huruf Pertama)',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          _buildCard(
            context,
            'Capaian Pembelajaran (CP)',
            'Peserta didik memiliki kemampuan berbahasa Jawa untuk berkomunikasi dan bernalar sesuai dengan tujuan, konteks sosial, dan akademis. Peserta didik mampu memahami, mengolah, dan menginterpretasi informasi paparan tentang pengenalan budaya Jawa (Cerita Wayang Punakawan) serta mengenali bentuk dan bunyi 10 aksara Jawa (ha, na, ca, ra, ka, da, ta, sa, wa, la) dari ragam teks maupun lisan.',
          ),
          const SizedBox(height: 16),
          const Text(
            'Tujuan Pembelajaran (TP) & Alur Tujuan Pembelajaran (ATP) berdasarkan Elemen',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildElementSection(
            '1. Menyimak',
            [
              'TP 1.1: Peserta didik mampu menyimak dan memahami pesan, informasi, dan amanat dari cerita wayang Punakawan yang dibacakan atau diperdengarkan.',
              'TP 1.2: Peserta didik mampu membedakan bunyi 10 aksara Jawa (ha, na, ca, ra, ka, da, ta, sa, wa, la) dari kata-kata sederhana yang diperdengarkan.',
            ],
            [
              'ATP 1: Memperdengarkan audio atau guru mendongeng cerita Punakawan.',
              'ATP 2: Mengidentifikasi tokoh-tokoh Punakawan beserta ciri khasnya.',
              'ATP 3: Memperdengarkan pelafalan 10 aksara Jawa dasar.',
              'ATP 4: Latihan mencocokkan bunyi dengan bentuk aksara.',
            ],
            Icons.headphones,
          ),
          _buildElementSection(
            '2. Membaca',
            [
              'TP 2.1: Peserta didik mampu membaca teks narasi pendek tentang cerita wayang Punakawan dengan pelafalan yang baik.',
              'TP 2.2: Peserta didik mampu membaca dan mengenali bentuk 10 aksara Jawa (ha, na, ca, ra, ka, da, ta, sa, wa, la).',
            ],
            [
              'ATP 1: Membaca nyaring teks pendek tentang Semar, Gareng, Petruk, dan Bagong.',
              'ATP 2: Menjawab pertanyaan berdasarkan teks yang dibaca.',
              'ATP 3: Mengamati bentuk flashcard 10 aksara Jawa.',
              'ATP 4: Membaca suku kata sederhana menggunakan 10 aksara tersebut.',
            ],
            Icons.menu_book,
          ),
          _buildElementSection(
            '3. Berbicara',
            [
              'TP 3.1: Peserta didik mampu menceritakan kembali cerita wayang Punakawan secara lisan menggunakan bahasa Jawa ngoko/krama sederhana.',
              'TP 3.2: Peserta didik mampu melafalkan 10 aksara Jawa dengan intonasi dan pelafalan yang tepat.',
            ],
            [
              'ATP 1: Berlatih melafalkan 10 aksara Jawa secara klasikal dan mandiri.',
              'ATP 2: Menceritakan kembali ciri-ciri tokoh Punakawan di depan kelas.',
              'ATP 3: Melakukan tanya jawab sederhana dengan teman tentang tokoh favorit dari Punakawan.',
            ],
            Icons.record_voice_over,
          ),
          _buildElementSection(
            '4. Menulis',
            [
              'TP 4.1: Peserta didik mampu menulis kalimat sederhana tentang tokoh wayang Punakawan.',
              'TP 4.2: Peserta didik mampu menyalin dan menuliskan 10 aksara Jawa (ha, na, ca, ra, ka, da, ta, sa, wa, la) sesuai kaidah penulisan.',
            ],
            [
              'ATP 1: Menebalkan garis putus-putus untuk membentuk 10 aksara Jawa.',
              'ATP 2: Menuliskan 10 aksara Jawa secara mandiri di buku tulis/halus.',
              'ATP 3: Menulis deskripsi singkat (1-2 kalimat) tentang tokoh Punakawan menggunakan huruf latin.',
            ],
            Icons.edit,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String content) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(content, style: const TextStyle(fontSize: 14, height: 1.5)),
          ],
        ),
      ),
    );
  }

  Widget _buildElementSection(
    String title,
    List<String> tpList,
    List<String> atpList,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        leading: Icon(icon),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tujuan Pembelajaran (TP):',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...tpList.map((tp) => Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('• '),
                          Expanded(child: Text(tp)),
                        ],
                      ),
                    )),
                const SizedBox(height: 16),
                const Text(
                  'Alur Tujuan Pembelajaran (ATP):',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ...atpList.map((atp) => Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('- '),
                          Expanded(child: Text(atp)),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
