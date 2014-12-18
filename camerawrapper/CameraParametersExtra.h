#ifndef ANDROID_HARDWARE_CAMERA_PARAMETERS_EXTRA_H
#define ANDROID_HARDWARE_CAMERA_PARAMETERS_EXTRA_H 

namespace android {
  class CameraParametersExtra: public CameraParameters {
  public:
    static const char KEY_SUPPORTED_ISO_MODES[];
    static const char KEY_ISO[];
    static const char KEY_CITYID[];
    static const char KEY_WEATHER[];
    static const char METERING_CENTER[];
    static const char METERING_SPOT[];
    static const char METERING_MATRIX[];
    static const char ISO_AUTO[];
    static const char ISO_50[];
    static const char ISO_100[];
    static const char ISO_200[];
    static const char ISO_400[];
    static const char KEY_ISO_MODE[];
    int getInt64(const char *key) const;
  };
}; //namespace android
#endif