import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
static const String route = '/dashboard';

const DashboardScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
appBar: AppBar(
title: const Text('Dashboard'),
backgroundColor: Colors.white,
elevation: 1,
automaticallyImplyLeading: false,
),
body: Padding(
padding: const EdgeInsets.all(16.0), // Jarak dari tepi layar
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// Teks Sapaan
Text(
'Selamat Datang,',
style: TextStyle(fontSize: 18, color: Colors.grey[600]),
),
const Text(
'Nugraha Ganteng',
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 24),

        // Kartu Informasi Utama
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row: ikon + teks saldo
              Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.grey[500],
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Saldo Saat Ini',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Rp 1.234.567',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Tombol aksi
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E88FF),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Lihat Detail Transaksi'),
                ),
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