import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF7F7F7),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.deepPurple,
                      child: Text("N", style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(width: 12),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back,",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Text(
                            "Nafiu Islam",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Balance Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "\$8,945.32",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Divider(color: Colors.white30),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Savings: \$5,500",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Last 30 days: +\$300",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    actionButton(Icons.compare_arrows, "Transfer"),

                    actionButton(Icons.receipt_long, "Pay Bills"),

                    actionButton(Icons.link, "Invest"),
                  ],
                ),

                const SizedBox(height: 30),

                const Text(
                  "Recent Transactions",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 15),

                transaction(
                  Icons.movie,
                  "Netflix Subscription",
                  "Entertainment",
                  "-\$19.99",
                  Colors.red,
                ),

                transaction(
                  Icons.local_cafe,
                  "Coffee Shop",
                  "Food & Drink",
                  "-\$4.50",
                  Colors.red,
                ),

                transaction(
                  Icons.attach_money,
                  "Salary Deposit",
                  "Income",
                  "+\$3500",
                  Colors.green,
                ),

                transaction(
                  Icons.shopping_cart,
                  "Grocery Store",
                  "Shopping",
                  "-\$55.80",
                  Colors.red,
                ),

                transaction(
                  Icons.shopping_bag,
                  "Amazon Purchase",
                  "Shopping",
                  "-\$120.45",
                  Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget actionButton(IconData icon, String text) {
    return Container(
      width: 95,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(blurRadius: 4, color: Colors.black12)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.deepPurple),
          const SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }

  static Widget transaction(
    IconData icon,
    String title,
    String sub,
    String amount,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, color: Colors.black54),
        ),
        title: Text(title),
        subtitle: Text(sub),
        trailing: Text(
          amount,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
