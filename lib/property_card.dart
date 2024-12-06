import 'package:flutter/material.dart';
import 'package:interview/models/property.dart';

class PropertyCard extends StatefulWidget {
  const PropertyCard({super.key, required this.property});

  final Property property;
  @override
  State<PropertyCard> createState() => _PropertyCardState();
}

class _PropertyCardState extends State<PropertyCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image(
                      image: AssetImage(
                        widget.property.image,
                      ),
                    )),
                Positioned(
                  top: 16,
                  right: 16,
                  width: 30,
                  child: PopupMenuButton<String>(
                    offset: const Offset(0, 40),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onSelected: (value) {},
                    itemBuilder: (BuildContext context) {
                      return [
                        const PopupMenuItem(
                          value: 'edit',
                          child: Text(
                            'Edit Property',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 'delete',
                          child: Text(
                            'Delete Property',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ];
                    },
                    child: const Icon(
                      Icons.more_vert,
                      color: Color.fromARGB(255, 139, 139, 139),
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            // Property Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$${widget.property.price}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.property.address,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(Icons.bed, size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(widget.property.roomNum),
                            const SizedBox(width: 16),
                            const Icon(Icons.bathtub,
                                size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(widget.property.bathtubNum),
                            const SizedBox(width: 16),
                            const Icon(Icons.square_foot,
                                size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(widget.property.area),
                            const SizedBox(width: 16),
                            const Icon(Icons.home,
                                size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text(widget.property.towner),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Status
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFF797980),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        widget.property.isReserve ? 'Reserved' : 'Available',
                        style: const TextStyle(color: Colors.white),
                      ),
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
