import 'package:image_picker/image_picker.dart';

Future<List<XFile>?> getImages(bool isCamera) async {
  final ImagePicker picker = ImagePicker();

  if (isCamera) {
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      return [photo];
    }
  } else {
    final List<XFile> images = await picker.pickMultiImage();
    return images;
  }
  return null;
}
