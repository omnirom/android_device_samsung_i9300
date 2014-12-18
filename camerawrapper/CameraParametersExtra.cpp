#include <camera/CameraParameters.h>
#include "CameraParametersExtra.h"

namespace android {
const char CameraParametersExtra::KEY_SUPPORTED_ISO_MODES[] = "iso-values";
const char CameraParametersExtra::KEY_ISO[] = "iso";
const char CameraParametersExtra::KEY_CITYID[] = "contextualtag-cityid";
const char CameraParametersExtra::KEY_WEATHER[] = "weather";
const char CameraParametersExtra::METERING_SPOT[] = "spot";
const char CameraParametersExtra::METERING_CENTER[] = "center";
const char CameraParametersExtra::METERING_MATRIX[] = "matrix";
const char CameraParametersExtra::ISO_AUTO[] = "auto";
const char CameraParametersExtra::ISO_50[] = "ISO50";
const char CameraParametersExtra::ISO_100[] = "ISO100";
const char CameraParametersExtra::ISO_200[] = "ISO200";
const char CameraParametersExtra::ISO_400[] = "ISO400";
const char CameraParametersExtra::KEY_ISO_MODE[] = "iso";
int CameraParametersExtra::getInt64(const char *key) const {    return -1; } ;
}; //namespace android