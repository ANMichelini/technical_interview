import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tecnic_interview/home/widgets/actions_card.dart';
import 'package:tecnic_interview/home/widgets/contacts_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1F22),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          // InkWell(
          //   child: SvgPicture.asset(
          //     'assets/Notificaciones.svg',
          //     height: 24,
          //     width: 24,
          //   ),
          // ),
          // InkWell(
          //   child: SvgPicture.asset(
          //     'assets/header.svg',
          //     height: 24,
          //     width: 24,
          //   ),
          // ),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height * 0.9,
        minHeight: MediaQuery.of(context).size.height * 0.6,
        color: const Color(0xFF2A2D32),
        borderRadius: BorderRadius.circular(24),
        panel: const ContactsPanel(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Mover dinero',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Spacer(),
                  ActionsCard(action: 'Transferir', iconPath: ''),
                  SizedBox(width: 8),
                  ActionsCard(action: 'Pagar', iconPath: ''),
                  Spacer(),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Spacer(),
                  ActionsCard(action: 'Retirar', iconPath: ''),
                  SizedBox(width: 8),
                  ActionsCard(action: 'Depositar', iconPath: ''),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
