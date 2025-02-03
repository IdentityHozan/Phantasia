import 'package:image/image.dart' as img;
import 'dart:io';

String analyzeColor(File imageFile) {
  // Load the image file
  img.Image? image = img.decodeImage(imageFile.readAsBytesSync());
  if (image == null) return "Error in image processing";

  // Get the RGB values of the top-left pixel (0, 0)
  int pixelColor = image.getPixel(0, 0); 

  int r = img.getRed(pixelColor);
  int g = img.getGreen(pixelColor);
  int b = img.getBlue(pixelColor);

  // For now, just display the RGB values
  return 'RGB: $r, $g, $b';
}
