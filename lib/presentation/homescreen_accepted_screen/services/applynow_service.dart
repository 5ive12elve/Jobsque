import '../controller/applynowcontroller.dart';
import '../models/apply_now_model.dart';
class ApplyNowService {
  final ApplyNowController _controller;

  ApplyNowService(this._controller);

  Future<ApplyNowModel> getData() async {
    try {
      final data = await _controller.fetchData();
      return data;
    } catch (e) {
      // Handle errors as needed
      print('Error fetching data: $e');
      rethrow;
    }
  }
}
