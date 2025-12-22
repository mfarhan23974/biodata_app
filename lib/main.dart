import 'package:flutter/material.dart';

void main() {
  runApp(const BiodataApp());
}

class BiodataApp extends StatelessWidget {
  const BiodataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Biodata Pribadi'),
          backgroundColor: Colors.blueGrey[700], // Warna AppBar
        ),
        // Warna latar belakang utama Scaffold
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Beri padding di sekitar body
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Ratakan teks ke kiri
            children: <Widget>[
              // Bagian Nama
              Container(
                padding: const EdgeInsets.all(12.0),
                margin: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  color:
                      Colors.teal[100], // Warna latar belakang container nama
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ), // Membuat sudut rounded
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.person, color: Colors.teal, size: 28),
                    SizedBox(width: 10), // Jarak antara ikon dan teks
                    Text(
                      'Nama: dwi astina',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),

              // Bagian Email
              Container(
                padding: const EdgeInsets.all(12.0),
                margin: const EdgeInsets.only(bottom: 10.0),
                width: double.infinity, // Membuat container selebar mungkin
                decoration: BoxDecoration(
                  color: Colors
                      .orange[100], // Warna latar belakang container email
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.orange, size: 24),
                    SizedBox(width: 10),
                    Text(
                      'Email: dwi123astina@gmail.com',
                      style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                    ),
                  ],
                ),
              ),

              // Bagian Nomor Telepon
              Container(
                padding: const EdgeInsets.all(12.0),
                margin: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors
                      .lightBlue[100], // Warna latar belakang container telepon
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.lightBlue, size: 24),
                    SizedBox(width: 10),
                    Text(
                      'Telepon:+62 823-7990-6233 ',
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ],
                ),
              ),

              // Bagian Alamat
              Container(
                padding: const EdgeInsets.all(12.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors
                      .green[100], // Warna latar belakang container alamat
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Column(
                  // Menggunakan Column untuk alamat yang mungkin lebih dari 1 baris
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.green, size: 24),
                        SizedBox(width: 10),
                        Text(
                          'Alamat:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 34.0,
                      ), // Indentasi untuk teks alamat
                      child: Text(
                        'puri masuray. , muaro jambi, Indonesia',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
