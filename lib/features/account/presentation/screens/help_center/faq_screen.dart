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
              FaqItem(
                title: "How many tickets can I book per transaction?",
                body:
                    "A customer is allowed to book a maximum of 10 tickets per transaction. For Bulk bookings, please feel free to call us on 9449618559.",
              ),
              FaqItem(
                title: "What is the minimum age for children to book tickets?",
                body:
                    "Children aged 3 yrs and above require a ticket to enter the theatre.",
              ),
              FaqItem(
                title: "How to avail the Movie offers/discounts on Ticket Bay?",
                body:
                    "We do have a lot of exciting offers on Ticket Bay, if it is available, it can be availed using wallets, credit/debit cards. The promo offers will be available on your review payment page that appears after selecting seats. One should also read the terms and conditions of the offers your planning to avail before making the transactions.",
              ),
              FaqItem(
                title: "Payment & Online transaction",
                body:
                    "You can make online transactions & book movie tickets using UPI, Debit cards, Credit cards or Netbanking. After entering your credit/debit card details, including CVV number in the online transaction page, the site will direct you to the bank's website where you have to enter Verification code (an extra-level of authentication) which is mandatory for any online transaction in India. After completing the banking process, you will be redirected again to Ticket Bay website where you will get the booking confirmation message. Modes of Payment available on Ticket Bay Website/App 'Net Banking', 'Credit/Debit Card', 'Unified Payment Interface'.",
              ),
              FaqItem(
                title: "How and where can I check the booking status?",
                body:
                    "After completing the online transaction, please do check if you have received any confirmation Emails. If you have received, then all you have to do is, collect the tickets at the theatre premises/Counter with the order ID. But if you haven't received any such messages, go to the User Profile section on our site and check whether your booking details are reflecting on the same.",
              ),
              FaqItem(
                title:
                    "What should I do if I haven't received the confirmed tickets through Emails?",
                body:
                    "Due to technical issues, you may not receive any Emails of the confirmed tickets. It happens on rare occasions, and we deeply regret it. However, in such situations, it is completely your responsibility to visit the User Profile section and check whether your booking confirmation is reflecting on the page. If its reflecting, all you have to do is, take a print out of it. As simple as that. If you are unable to find anything on the Order Status Page or if you find it difficult to confirm, please feel free to call us at 9449618559 or Email us on support@ticketbay.in. We are here to help you in confirming the tickets.",
              ),
              FaqItem(
                title:
                    "What if my booking status is not reflecting on the page?",
                body:
                    "It's a very rare situation and may occur due to network error caused at the time confirming the transaction. But you don't have to worry about it. Ticket Bay doesn't charge for the transaction made if the order is not reflecting on the page. Also, in such situations, please do not try making another transaction at least for next 20 minutes as it might result in duplication/multiple transactions. If at all the amount gets debited from your bank account or wallet, the refund of the same will happen within 5 to 10 working days. For any queries or clarification regarding failed transactions or website issues, please do email us on support@ticketbay.in. Don't forget to mention the date & time of transaction, Name, login ID & Theatre in the mail. You can also reach us on 9449618559. NOTE: To have a clear update of every transaction you make on Ticketbay, make sure that you sign-in using your registered USER ID. Only then, all your transactions or booking gets displayed without any error in the 'Your Booking Lists' page. In case, if you have booked tickets without signing in, the transactions/booking status may not reflect in the ' Your Booking Lists ' page.",
              ),
              FaqItem(
                title:
                    "How can I avoid or get rid of failed transactions/booking?",
                body:
                    "Make sure that your network connection is fine, without any fluctuations. Also, we always recommend you to always clear 'CACHE' in your app or website to avoid failed transactions/booking.",
              ),
              FaqItem(
                title:
                    "Where can I collect the tickets I booked on Ticket Bay?",
                body:
                    "As we have mentioned earlier, you can show the order/confirmation ID received through Email at the theatre ticket counter/ premises and collect the ticket, It is also safe for you to carry the credit/Debit card used to make the online transaction. Sometimes, you might not receive any Email from Ticket Bay, as you might have activated Do Not Disturb/Call mode.",
              ),
              FaqItem(
                title: "Will you refund the money if a show gets cancelled?",
                body:
                    "A customer will be informed in advance if a show gets cancelled or postponed. This is a rare situation, and we don't hold responsibility for the cancellation of the show. However, the amount transacted will be refunded to their respective Source within 7 to 10 business days.",
              ),
              FaqItem(
                title:
                    "Can I cancel the tickets if I book them by mistake or if I prefer another show time?",
                body:
                    "As per law, tickets once booked cannot be cancelled or replaced. Also, it's impossible to make changes in the show timings, date or seats once the tickets are booked.",
              ),
              FaqItem(
                title:
                    "Why Ticket Bay enforces a Time-limit during the online transaction process?",
                body:
                    "We ensure that no one else purchases the seats you have selected until you cancel the transaction process or abandon it in the middle, But due to high demand, we've implemented a time limit for each checkout page based on the amount of information we want you to fill up. If you fail to complete the transaction within the given time period, the blocked tickets will be released for others to purchase. All you have is ten minutes, to complete the booking process.",
              ),
              FaqItem(
                title:
                    "How can I ensure that the transaction made through this website is secure?",
                body:
                    "Our service is equipped with the latest state-of-the-art technology to make sure that every transaction made through Ticket Bay website/App is safe and secure. All transactions happen through a highly-protected browser and the best software available for secure online commerce business. For any help/assistance, you can always call us on 9449618559 or Email us on support@ticketbay.in",
              ),
              FaqItem(
                title: "How to avail Coupon Code?",
                body:
                    "After entering the code on order review screen, all you have to do is, click apply, and wait for this message on-screen for successful application. Note that you will be entitled to avail the coupon code/cashback/discount only after logging in.",
              ),
              const SizedBox(height: 3),
            ],
          ),
        ),
      ),
    );
  }
}
