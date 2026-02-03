import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/app_bar.dart';
import 'package:ticket_bay/core/shared/widgets/faq_card.dart';
import 'package:ticket_bay/gen/colors.gen.dart';

class FaqScreen extends HookConsumerWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: secondaryAppBar("FAQ's"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 3),
              FaqItem(
                title:
                    "Will Ticket Bay ask for my personal and bank details to book tickets?",
                body:
                    "You can book tickets only through Ticket Bay website and app. We do not process phone/email requests from users. Please note that Ticket Bay or its employees will never contact you requesting for your bank account number/card number/ card expiry date/ CVV/OTP/ net banking password to help you book movie tickets. Do not share these details with anyone over phone or e-mail as this could lead to fraudulent transactions.",
              ),
              FaqItem(
                title: "How to login/Register with us?",
                body:
                    "Are you a new user? No worries! All you have to do is, Click Sign Up icon option on the homepage, and fill up your details. After submitting it, you will be receiving a confirmation mail on your phone. Now, you can just log in by entering the email and password, and book movie tickets in a hassle-free way.",
              ),
              FaqItem(
                title:
                    "Where can the users find details about upcoming films, show timings & more?",
                body:
                    "The users can visit our website (ticketbay.in), and check the details about upcoming films, show timings, the genre of films, theatres and more on the homepage. They can book tickets in a hassle-free & secured way through online transactions using wallets, debits and credit cards from anywhere and anytime",
              ),
              FaqItem(
                title: "How to book your movie tickets online?",
                body:
                    "The customers should enter the given login id (phone number, email or username that you registered in ticketbay.in), and then choose their preferred location, theatres, show timings, & no. of seats. The site then redirects the user to the online transaction page where they will be given a choice to make payment availing offers through wallets, credit or debit cards.",
              ),
              const SizedBox(height: 3),
            ],
          ),
        ),
      ),
    );
  }
}
