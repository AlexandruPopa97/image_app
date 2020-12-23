library get_images;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_app/models/img.dart';


part 'get_images.freezed.dart';

@freezed
abstract class GetImages with _$GetImages {

  const factory GetImages.start() = GetImagesStart;
  const factory GetImages.successful(List<Img> images) = GetImagesSuccessful;
  const factory GetImages.error(dynamic error) = GetImagesError;
}