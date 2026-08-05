import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.18),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Md Atikur Rahman",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey.shade600,
                      ),
                    ),

                    const SizedBox(height: 18),

                    Text(
                      "Passionate about creating user-friendly and engaging digital experiences.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Divider(color: Colors.grey.shade300, thickness: 1),

                    const SizedBox(height: 15),

                    Row(
                      children: const [
                        Icon(Icons.email, size: 20, color: Colors.black54),

                        SizedBox(width: 12),

                        Text(
                          "mdatikurrahman.dev@gmail.com",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: const [
                        Icon(Icons.phone, size: 20, color: Colors.black54),

                        SizedBox(width: 12),

                        Text("+8801736938452", style: TextStyle(fontSize: 15)),
                      ],
                    ),

                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {},

                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),

                              child: const Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: OutlinedButton(
                              onPressed: () {},

                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.grey.shade400),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),

                              child: const Text(
                                "Message",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

              Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.grey.shade400, thickness: 1),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Interests",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Colors.grey.shade400, thickness: 1),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  Expanded(
                    child: interestCard(
                      image: "assets/travel.jpg",
                      title: "Travel",
                      subtitle: "Exploring new places around the world",
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: interestCard(
                      image: "assets/camera.jpg",
                      title: "Photography",
                      subtitle: "Capturing moments through the lens",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget interestCard({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.18),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
                ),

                const SizedBox(height: 18),

                SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF3F3F3),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),

                    child: const Text(
                      "View More",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
