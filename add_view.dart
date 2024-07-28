import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddView extends StatefulWidget {
  @override
  _AddViewState createState() => _AddViewState();
}

class _AddViewState extends State<AddView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _menuNameController = TextEditingController();
  final TextEditingController _menuDescriptionController =
      TextEditingController();
  final TextEditingController _menuPriceController = TextEditingController();
  File? _image;
  File? _menuImage;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
    _categoryController.dispose();
    _menuNameController.dispose();
    _menuDescriptionController.dispose();
    _menuPriceController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  Future<void> _pickMenuImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _menuImage = File(image.path);
      });
    }
  }

  void _saveRestoData() {
    String name = _nameController.text;
    String description = _descriptionController.text;
    String category = _categoryController.text;

    // Tampilkan pesan konfirmasi
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Data Resto Disimpan"),
          content:
              Text("Nama: $name\nDeskripsi: $description\nKategori: $category"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );

    // Reset form setelah menyimpan
    _nameController.clear();
    _descriptionController.clear();
    _categoryController.clear();
    setState(() {
      _image = null; // Reset gambar
    });
  }

  void _saveMenuData() {
    String menuName = _menuNameController.text;
    String menuDescription = _menuDescriptionController.text;
    String menuPrice = _menuPriceController.text;

    // Tampilkan pesan konfirmasi
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Data Menu Disimpan"),
          content: Text(
              "Nama Menu: $menuName\nDeskripsi: $menuDescription\nHarga: $menuPrice"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );

    // Reset form setelah menyimpan
    _menuNameController.clear();
    _menuDescriptionController.clear();
    _menuPriceController.clear();
    setState(() {
      _menuImage = null; // Reset gambar
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Add",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "Resto"),
            Tab(text: "Menu"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Tab Resto
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Resto",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'nama resto',
                  ),
                ),
                SizedBox(height: 25),
                Text("Deskripsi",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'deskripsi resto',
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 25),
                Text("Kategori",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                TextField(
                  controller: _categoryController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Japanese, Indonesian, Western, etc',
                  ),
                ),
                SizedBox(height: 25),
                Text("Gambar",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                SizedBox(height: 8),
                _image == null
                    ? Text("Tidak ada gambar yang dipilih.")
                    : Image.file(_image!,
                        height: 100, width: 100, fit: BoxFit.cover),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: _pickImage,
                  child: Text("Pilih Gambar"),
                ),
                SizedBox(height: 25),
                Center(
                  child: ElevatedButton(
                    onPressed: _saveRestoData,
                    child: Text("Simpan Resto"),
                  ),
                ),
              ],
            ),
          ),
          // Tab Menu
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Menu",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                TextField(
                  controller: _menuNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'nama menu',
                  ),
                ),
                SizedBox(height: 25),
                Text("Deskripsi",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                TextField(
                  controller: _menuDescriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'deskripsi menu',
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 25),
                Text("Harga",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                TextField(
                  controller: _menuPriceController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'harga menu',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 25),
                Text("Gambar",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                SizedBox(height: 8),
                _menuImage == null
                    ? Text("Tidak ada gambar yang dipilih.")
                    : Image.file(_menuImage!,
                        height: 100, width: 100, fit: BoxFit.cover),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: _pickMenuImage,
                  child: Text("Pilih Gambar"),
                ),
                SizedBox(height: 25),
                Center(
                  child: ElevatedButton(
                    onPressed: _saveMenuData,
                    child: Text("Simpan Menu"),
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