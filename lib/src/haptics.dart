import 'package:haptic_feedback/haptic_feedback.dart';

import 'haptic_feedback_platform_interface.dart';

///
class Haptics {
  /// A class that exposes the haptic feedback functionality.
  const Haptics();

  /// Checks if the device is capable of performing haptic feedback.
  Future<bool> canVibrate() {
    return HapticFeedbackPlatform.instance.canVibrate();
  }

  /// Performs haptic feedback on the device.
  Future<void> vibrate(HapticsType type) {
    return HapticFeedbackPlatform.instance.vibrate(type);
  }
}
