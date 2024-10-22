/*

C:\Dev\SDL3-Beef\headers\SDL_atomic.h
        [LinkName("SDL_TryLockSpinlock")]
        public static extern bool TryLockSpinlock(SpinLock* lock);

        [LinkName("SDL_LockSpinlock")]
        public static extern void LockSpinlock(SpinLock* lock);

        [LinkName("SDL_UnlockSpinlock")]
        public static extern void UnlockSpinlock(SpinLock* lock);

        [LinkName("SDL_MemoryBarrierReleaseFunction")]
        public static extern void MemoryBarrierReleaseFunction();

        [LinkName("SDL_MemoryBarrierAcquireFunction")]
        public static extern void MemoryBarrierAcquireFunction();

        [LinkName("SDL_CompareAndSwapAtomicInt")]
        public static extern bool CompareAndSwapAtomicInt(AtomicInt* a, int oldval, int newval);

        [LinkName("SDL_SetAtomicInt")]
        public static extern int SetAtomicInt(AtomicInt* a, int v);

        [LinkName("SDL_GetAtomicInt")]
        public static extern int GetAtomicInt(AtomicInt* a);

        [LinkName("SDL_AddAtomicInt")]
        public static extern int AddAtomicInt(AtomicInt* a, int v);

        [LinkName("SDL_CompareAndSwapAtomicU32")]
        public static extern bool CompareAndSwapAtomicU32(AtomicU32* a, Uint32 oldval, Uint32 newval);

        [LinkName("SDL_SetAtomicU32")]
        public static extern Uint32 SetAtomicU32(AtomicU32* a, Uint32 v);

        [LinkName("SDL_GetAtomicU32")]
        public static extern Uint32 GetAtomicU32(AtomicU32* a);

        [LinkName("SDL_CompareAndSwapAtomicPointer")]
        public static extern bool CompareAndSwapAtomicPointer(void** a, void* oldval, void* newval);

        [LinkName("SDL_SetAtomicPointer")]
        public static extern void*  SetAtomicPointer(void** a, void* v);

        [LinkName("SDL_GetAtomicPointer")]
        public static extern void*  GetAtomicPointer(void** a);


C:\Dev\SDL3-Beef\headers\SDL_audio.h
        [LinkName("SDL_GetNumAudioDrivers")]
        public static extern int GetNumAudioDrivers();

        [LinkName("SDL_GetAudioDriver")]
        public static extern const char*  GetAudioDriver(int index);

        [LinkName("SDL_GetCurrentAudioDriver")]
        public static extern const char*  GetCurrentAudioDriver();

        [LinkName(" SDL_GetAudioPlaybackDevices")]
        public static extern AudioDeviceID*  GetAudioPlaybackDevices(int* count);

        [LinkName(" SDL_GetAudioRecordingDevices")]
        public static extern AudioDeviceID*  GetAudioRecordingDevices(int* count);

        [LinkName("SDL_GetAudioDeviceName")]
        public static extern const char*  GetAudioDeviceName(AudioDeviceID devid);

        [LinkName("SDL_GetAudioDeviceFormat")]
        public static extern bool GetAudioDeviceFormat(AudioDeviceID devid, AudioSpec* spec, int* sample_frames);

        [LinkName("SDL_GetAudioDeviceChannelMap")]
        public static extern int*  GetAudioDeviceChannelMap(AudioDeviceID devid, int* count);

        [LinkName(" SDL_OpenAudioDevice")]
        public static extern AudioDeviceID OpenAudioDevice(AudioDeviceID devid, const AudioSpec* spec);

        [LinkName("SDL_PauseAudioDevice")]
        public static extern bool PauseAudioDevice(AudioDeviceID dev);

        [LinkName("SDL_ResumeAudioDevice")]
        public static extern bool ResumeAudioDevice(AudioDeviceID dev);

        [LinkName("SDL_AudioDevicePaused")]
        public static extern bool AudioDevicePaused(AudioDeviceID dev);

        [LinkName("SDL_GetAudioDeviceGain")]
        public static extern float GetAudioDeviceGain(AudioDeviceID devid);

        [LinkName("SDL_SetAudioDeviceGain")]
        public static extern bool SetAudioDeviceGain(AudioDeviceID devid, float gain);

        [LinkName("SDL_CloseAudioDevice")]
        public static extern void CloseAudioDevice(AudioDeviceID devid);

        [LinkName("SDL_BindAudioStreams")]
        public static extern bool BindAudioStreams(AudioDeviceID devid, AudioStream** streams, int num_streams);

        [LinkName("SDL_BindAudioStream")]
        public static extern bool BindAudioStream(AudioDeviceID devid, AudioStream* stream);

        [LinkName("SDL_UnbindAudioStreams")]
        public static extern void UnbindAudioStreams(AudioStream** streams, int num_streams);

        [LinkName("SDL_UnbindAudioStream")]
        public static extern void UnbindAudioStream(AudioStream* stream);

        [LinkName(" SDL_GetAudioStreamDevice")]
        public static extern AudioDeviceID GetAudioStreamDevice(AudioStream* stream);

        [LinkName(" SDL_CreateAudioStream")]
        public static extern AudioStream*  CreateAudioStream(const AudioSpec* src_spec, const AudioSpec* dst_spec);

        [LinkName(" SDL_GetAudioStreamProperties")]
        public static extern PropertiesID GetAudioStreamProperties(AudioStream* stream);

        [LinkName("SDL_GetAudioStreamFormat")]
        public static extern bool GetAudioStreamFormat(AudioStream* stream, AudioSpec* src_spec, AudioSpec* dst_spec);

        [LinkName("SDL_SetAudioStreamFormat")]
        public static extern bool SetAudioStreamFormat(AudioStream* stream, const AudioSpec* src_spec, const AudioSpec* dst_spec);

        [LinkName("SDL_GetAudioStreamFrequencyRatio")]
        public static extern float GetAudioStreamFrequencyRatio(AudioStream* stream);

        [LinkName("SDL_SetAudioStreamFrequencyRatio")]
        public static extern bool SetAudioStreamFrequencyRatio(AudioStream* stream, float ratio);

        [LinkName("SDL_GetAudioStreamGain")]
        public static extern float GetAudioStreamGain(AudioStream* stream);

        [LinkName("SDL_SetAudioStreamGain")]
        public static extern bool SetAudioStreamGain(AudioStream* stream, float gain);

        [LinkName("SDL_GetAudioStreamInputChannelMap")]
        public static extern int*  GetAudioStreamInputChannelMap(AudioStream* stream, int* count);

        [LinkName("SDL_GetAudioStreamOutputChannelMap")]
        public static extern int*  GetAudioStreamOutputChannelMap(AudioStream* stream, int* count);

        [LinkName("SDL_SetAudioStreamInputChannelMap")]
        public static extern bool SetAudioStreamInputChannelMap(AudioStream* stream, const int* chmap, int count);

        [LinkName("SDL_SetAudioStreamOutputChannelMap")]
        public static extern bool SetAudioStreamOutputChannelMap(AudioStream* stream, const int* chmap, int count);

        [LinkName("SDL_PutAudioStreamData")]
        public static extern bool PutAudioStreamData(AudioStream* stream, const void* buf, int len);

        [LinkName("SDL_GetAudioStreamData")]
        public static extern int GetAudioStreamData(AudioStream* stream, void* buf, int len);

        [LinkName("SDL_GetAudioStreamAvailable")]
        public static extern int GetAudioStreamAvailable(AudioStream* stream);

        [LinkName("SDL_GetAudioStreamQueued")]
        public static extern int GetAudioStreamQueued(AudioStream* stream);

        [LinkName("SDL_FlushAudioStream")]
        public static extern bool FlushAudioStream(AudioStream* stream);

        [LinkName("SDL_ClearAudioStream")]
        public static extern bool ClearAudioStream(AudioStream* stream);

        [LinkName("SDL_PauseAudioStreamDevice")]
        public static extern bool PauseAudioStreamDevice(AudioStream* stream);

        [LinkName("SDL_ResumeAudioStreamDevice")]
        public static extern bool ResumeAudioStreamDevice(AudioStream* stream);

        [LinkName("SDL_LockAudioStream")]
        public static extern bool LockAudioStream(AudioStream* stream);

        [LinkName("SDL_UnlockAudioStream")]
        public static extern bool UnlockAudioStream(AudioStream* stream);

        [LinkName("SDL_SetAudioStreamGetCallback")]
        public static extern bool SetAudioStreamGetCallback(AudioStream* stream, AudioStreamCallback callback, void* userdata);

        [LinkName("SDL_SetAudioStreamPutCallback")]
        public static extern bool SetAudioStreamPutCallback(AudioStream* stream, AudioStreamCallback callback, void* userdata);

        [LinkName("SDL_DestroyAudioStream")]
        public static extern void DestroyAudioStream(AudioStream* stream);

        [LinkName(" SDL_OpenAudioDeviceStream")]
        public static extern AudioStream*  OpenAudioDeviceStream(AudioDeviceID devid, const AudioSpec* spec, AudioStreamCallback callback, void* userdata);

        [LinkName("SDL_SetAudioPostmixCallback")]
        public static extern bool SetAudioPostmixCallback(AudioDeviceID devid, AudioPostmixCallback callback, void* userdata);

        [LinkName("SDL_LoadWAV_IO")]
        public static extern bool LoadWAV_IO(IOStream* src, bool closeio, AudioSpec* spec, Uint8** audio_buf, Uint32* audio_len);

        [LinkName("SDL_LoadWAV")]
        public static extern bool LoadWAV(const char* path, AudioSpec* spec, Uint8** audio_buf, Uint32* audio_len);

        [LinkName("SDL_MixAudio")]
        public static extern bool MixAudio(Uint8* dst, const Uint8* src, AudioFormat format, Uint32 len, float volume);

        [LinkName("SDL_ConvertAudioSamples")]
        public static extern bool ConvertAudioSamples(const AudioSpec* src_spec, const Uint8* src_data, int src_len, const AudioSpec* dst_spec, Uint8** dst_data, int* dst_len);

        [LinkName("SDL_GetAudioFormatName")]
        public static extern const char*  GetAudioFormatName(AudioFormat format);

        [LinkName("SDL_GetSilenceValueForFormat")]
        public static extern int GetSilenceValueForFormat(AudioFormat format);


C:\Dev\SDL3-Beef\headers\SDL_begin_code.h

C:\Dev\SDL3-Beef\headers\SDL_bits.h

C:\Dev\SDL3-Beef\headers\SDL_blendmode.h
        [LinkName(" SDL_ComposeCustomBlendMode")]
        public static extern BlendMode ComposeCustomBlendMode(BlendFactor srcColorFactor,


C:\Dev\SDL3-Beef\headers\SDL_camera.h
        [LinkName("SDL_GetNumCameraDrivers")]
        public static extern int GetNumCameraDrivers();

        [LinkName("SDL_GetCameraDriver")]
        public static extern const char*  GetCameraDriver(int index);

        [LinkName("SDL_GetCurrentCameraDriver")]
        public static extern const char*  GetCurrentCameraDriver();

        [LinkName(" SDL_GetCameras")]
        public static extern CameraID*  GetCameras(int* count);

        [LinkName(" SDL_GetCameraSupportedFormats")]
        public static extern CameraSpec**  GetCameraSupportedFormats(CameraID devid, int* count);

        [LinkName("SDL_GetCameraName")]
        public static extern const char*  GetCameraName(CameraID instance_id);

        [LinkName(" SDL_GetCameraPosition")]
        public static extern CameraPosition GetCameraPosition(CameraID instance_id);

        [LinkName(" SDL_OpenCamera")]
        public static extern Camera*  OpenCamera(CameraID instance_id, const CameraSpec* spec);

        [LinkName("SDL_GetCameraPermissionState")]
        public static extern int GetCameraPermissionState(Camera* camera);

        [LinkName(" SDL_GetCameraID")]
        public static extern CameraID GetCameraID(Camera* camera);

        [LinkName(" SDL_GetCameraProperties")]
        public static extern PropertiesID GetCameraProperties(Camera* camera);

        [LinkName("SDL_GetCameraFormat")]
        public static extern bool GetCameraFormat(Camera* camera, CameraSpec* spec);

        [LinkName(" SDL_AcquireCameraFrame")]
        public static extern Surface*  AcquireCameraFrame(Camera* camera, Uint64* timestampNS);

        [LinkName("SDL_ReleaseCameraFrame")]
        public static extern void ReleaseCameraFrame(Camera* camera, Surface* frame);

        [LinkName("SDL_CloseCamera")]
        public static extern void CloseCamera(Camera* camera);


C:\Dev\SDL3-Beef\headers\SDL_clipboard.h
        [LinkName("SDL_SetClipboardText")]
        public static extern bool SetClipboardText(const char* text);

        [LinkName("SDL_GetClipboardText")]
        public static extern char*  GetClipboardText();

        [LinkName("SDL_HasClipboardText")]
        public static extern bool HasClipboardText();

        [LinkName("SDL_SetPrimarySelectionText")]
        public static extern bool SetPrimarySelectionText(const char* text);

        [LinkName("SDL_GetPrimarySelectionText")]
        public static extern char*  GetPrimarySelectionText();

        [LinkName("SDL_HasPrimarySelectionText")]
        public static extern bool HasPrimarySelectionText();

        [LinkName("SDL_SetClipboardData")]
        public static extern bool SetClipboardData(ClipboardDataCallback callback, ClipboardCleanupCallback cleanup, void* userdata, const char** mime_types, size_t num_mime_types);

        [LinkName("SDL_ClearClipboardData")]
        public static extern bool ClearClipboardData();

        [LinkName("SDL_GetClipboardData")]
        public static extern void*  GetClipboardData(const char* mime_type, size_t* size);

        [LinkName("SDL_HasClipboardData")]
        public static extern bool HasClipboardData(const char* mime_type);

        [LinkName("SDL_GetClipboardMimeTypes")]
        public static extern char**  GetClipboardMimeTypes(size_t* num_mime_types);


C:\Dev\SDL3-Beef\headers\SDL_close_code.h

C:\Dev\SDL3-Beef\headers\SDL_copying.h

C:\Dev\SDL3-Beef\headers\SDL_cpuinfo.h
        [LinkName("SDL_GetNumLogicalCPUCores")]
        public static extern int GetNumLogicalCPUCores();

        [LinkName("SDL_GetCPUCacheLineSize")]
        public static extern int GetCPUCacheLineSize();

        [LinkName("SDL_HasAltiVec")]
        public static extern bool HasAltiVec();

        [LinkName("SDL_HasMMX")]
        public static extern bool HasMMX();

        [LinkName("SDL_HasSSE")]
        public static extern bool HasSSE();

        [LinkName("SDL_HasSSE2")]
        public static extern bool HasSSE2();

        [LinkName("SDL_HasSSE3")]
        public static extern bool HasSSE3();

        [LinkName("SDL_HasSSE41")]
        public static extern bool HasSSE41();

        [LinkName("SDL_HasSSE42")]
        public static extern bool HasSSE42();

        [LinkName("SDL_HasAVX")]
        public static extern bool HasAVX();

        [LinkName("SDL_HasAVX2")]
        public static extern bool HasAVX2();

        [LinkName("SDL_HasAVX512F")]
        public static extern bool HasAVX512F();

        [LinkName("SDL_HasARMSIMD")]
        public static extern bool HasARMSIMD();

        [LinkName("SDL_HasNEON")]
        public static extern bool HasNEON();

        [LinkName("SDL_HasLSX")]
        public static extern bool HasLSX();

        [LinkName("SDL_HasLASX")]
        public static extern bool HasLASX();

        [LinkName("SDL_GetSystemRAM")]
        public static extern int GetSystemRAM();

        [LinkName("SDL_GetSIMDAlignment")]
        public static extern size_t GetSIMDAlignment();


C:\Dev\SDL3-Beef\headers\SDL_dialog.h
        [LinkName("SDL_ShowOpenFileDialog")]
        public static extern void ShowOpenFileDialog(DialogFileCallback callback, void* userdata, Window* window, const DialogFileFilter* filters, int nfilters, const char* default_location, bool allow_many);

        [LinkName("SDL_ShowSaveFileDialog")]
        public static extern void ShowSaveFileDialog(DialogFileCallback callback, void* userdata, Window* window, const DialogFileFilter* filters, int nfilters, const char* default_location);

        [LinkName("SDL_ShowOpenFolderDialog")]
        public static extern void ShowOpenFolderDialog(DialogFileCallback callback, void* userdata, Window* window, const char* default_location, bool allow_many);


C:\Dev\SDL3-Beef\headers\SDL_events.h
        [LinkName("SDL_PumpEvents")]
        public static extern void PumpEvents();

        [LinkName("SDL_PeepEvents")]
        public static extern int PeepEvents(Event* events, int numevents, EventAction action, Uint32 minType, Uint32 maxType);

        [LinkName("SDL_HasEvent")]
        public static extern bool HasEvent(Uint32 type);

        [LinkName("SDL_HasEvents")]
        public static extern bool HasEvents(Uint32 minType, Uint32 maxType);

        [LinkName("SDL_FlushEvent")]
        public static extern void FlushEvent(Uint32 type);

        [LinkName("SDL_FlushEvents")]
        public static extern void FlushEvents(Uint32 minType, Uint32 maxType);

        [LinkName("SDL_PollEvent")]
        public static extern bool PollEvent(Event* event);

        [LinkName("SDL_WaitEvent")]
        public static extern bool WaitEvent(Event* event);

        [LinkName("SDL_WaitEventTimeout")]
        public static extern bool WaitEventTimeout(Event* event, Sint32 timeoutMS);

        [LinkName("SDL_PushEvent")]
        public static extern bool PushEvent(Event* event);

        [LinkName("SDL_SetEventFilter")]
        public static extern void SetEventFilter(EventFilter filter, void* userdata);

        [LinkName("SDL_GetEventFilter")]
        public static extern bool GetEventFilter(EventFilter* filter, void** userdata);

        [LinkName("SDL_AddEventWatch")]
        public static extern bool AddEventWatch(EventFilter filter, void* userdata);

        [LinkName("SDL_RemoveEventWatch")]
        public static extern void RemoveEventWatch(EventFilter filter, void* userdata);

        [LinkName("SDL_FilterEvents")]
        public static extern void FilterEvents(EventFilter filter, void* userdata);

        [LinkName("SDL_SetEventEnabled")]
        public static extern void SetEventEnabled(Uint32 type, bool enabled);

        [LinkName("SDL_EventEnabled")]
        public static extern bool EventEnabled(Uint32 type);

        [LinkName("SDL_RegisterEvents")]
        public static extern Uint32 RegisterEvents(int numevents);

        [LinkName(" SDL_GetWindowFromEvent")]
        public static extern Window*  GetWindowFromEvent(const Event* event);


C:\Dev\SDL3-Beef\headers\SDL_filesystem.h
        [LinkName("SDL_GetBasePath")]
        public static extern const char*  GetBasePath();

        [LinkName("SDL_GetPrefPath")]
        public static extern char*  GetPrefPath(const char* org, const char* app);

        [LinkName("SDL_GetUserFolder")]
        public static extern const char*  GetUserFolder(Folder folder);

        [LinkName("SDL_CreateDirectory")]
        public static extern bool CreateDirectory(const char* path);

        [LinkName("SDL_EnumerateDirectory")]
        public static extern bool EnumerateDirectory(const char* path, EnumerateDirectoryCallback callback, void* userdata);

        [LinkName("SDL_RemovePath")]
        public static extern bool RemovePath(const char* path);

        [LinkName("SDL_RenamePath")]
        public static extern bool RenamePath(const char* oldpath, const char* newpath);

        [LinkName("SDL_CopyFile")]
        public static extern bool CopyFile(const char* oldpath, const char* newpath);

        [LinkName("SDL_GetPathInfo")]
        public static extern bool GetPathInfo(const char* path, PathInfo* info);

        [LinkName("SDL_GlobDirectory")]
        public static extern char**  GlobDirectory(const char* path, const char* pattern, GlobFlags flags, int* count);


C:\Dev\SDL3-Beef\headers\SDL_gamepad.h
        [LinkName("SDL_AddGamepadMapping")]
        public static extern int AddGamepadMapping(const char* mapping);

        [LinkName("SDL_AddGamepadMappingsFromIO")]
        public static extern int AddGamepadMappingsFromIO(IOStream* src, bool closeio);

        [LinkName("SDL_AddGamepadMappingsFromFile")]
        public static extern int AddGamepadMappingsFromFile(const char* file);

        [LinkName("SDL_ReloadGamepadMappings")]
        public static extern bool ReloadGamepadMappings();

        [LinkName("SDL_GetGamepadMappings")]
        public static extern char**  GetGamepadMappings(int* count);

        [LinkName("SDL_GetGamepadMappingForGUID")]
        public static extern char*  GetGamepadMappingForGUID(GUID guid);

        [LinkName("SDL_GetGamepadMapping")]
        public static extern char*  GetGamepadMapping(Gamepad* gamepad);

        [LinkName("SDL_SetGamepadMapping")]
        public static extern bool SetGamepadMapping(JoystickID instance_id, const char* mapping);

        [LinkName("SDL_HasGamepad")]
        public static extern bool HasGamepad();

        [LinkName(" SDL_GetGamepads")]
        public static extern JoystickID*  GetGamepads(int* count);

        [LinkName("SDL_IsGamepad")]
        public static extern bool IsGamepad(JoystickID instance_id);

        [LinkName("SDL_GetGamepadNameForID")]
        public static extern const char*  GetGamepadNameForID(JoystickID instance_id);

        [LinkName("SDL_GetGamepadPathForID")]
        public static extern const char*  GetGamepadPathForID(JoystickID instance_id);

        [LinkName("SDL_GetGamepadPlayerIndexForID")]
        public static extern int GetGamepadPlayerIndexForID(JoystickID instance_id);

        [LinkName(" SDL_GetGamepadGUIDForID")]
        public static extern GUID GetGamepadGUIDForID(JoystickID instance_id);

        [LinkName("SDL_GetGamepadVendorForID")]
        public static extern Uint16 GetGamepadVendorForID(JoystickID instance_id);

        [LinkName("SDL_GetGamepadProductForID")]
        public static extern Uint16 GetGamepadProductForID(JoystickID instance_id);

        [LinkName("SDL_GetGamepadProductVersionForID")]
        public static extern Uint16 GetGamepadProductVersionForID(JoystickID instance_id);

        [LinkName(" SDL_GetGamepadTypeForID")]
        public static extern GamepadType GetGamepadTypeForID(JoystickID instance_id);

        [LinkName(" SDL_GetRealGamepadTypeForID")]
        public static extern GamepadType GetRealGamepadTypeForID(JoystickID instance_id);

        [LinkName("SDL_GetGamepadMappingForID")]
        public static extern char*  GetGamepadMappingForID(JoystickID instance_id);

        [LinkName(" SDL_OpenGamepad")]
        public static extern Gamepad*  OpenGamepad(JoystickID instance_id);

        [LinkName(" SDL_GetGamepadFromID")]
        public static extern Gamepad*  GetGamepadFromID(JoystickID instance_id);

        [LinkName(" SDL_GetGamepadFromPlayerIndex")]
        public static extern Gamepad*  GetGamepadFromPlayerIndex(int player_index);

        [LinkName(" SDL_GetGamepadProperties")]
        public static extern PropertiesID GetGamepadProperties(Gamepad* gamepad);

        [LinkName(" SDL_GetGamepadID")]
        public static extern JoystickID GetGamepadID(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadName")]
        public static extern const char*  GetGamepadName(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadPath")]
        public static extern const char*  GetGamepadPath(Gamepad* gamepad);

        [LinkName(" SDL_GetGamepadType")]
        public static extern GamepadType GetGamepadType(Gamepad* gamepad);

        [LinkName(" SDL_GetRealGamepadType")]
        public static extern GamepadType GetRealGamepadType(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadPlayerIndex")]
        public static extern int GetGamepadPlayerIndex(Gamepad* gamepad);

        [LinkName("SDL_SetGamepadPlayerIndex")]
        public static extern bool SetGamepadPlayerIndex(Gamepad* gamepad, int player_index);

        [LinkName("SDL_GetGamepadVendor")]
        public static extern Uint16 GetGamepadVendor(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadProduct")]
        public static extern Uint16 GetGamepadProduct(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadProductVersion")]
        public static extern Uint16 GetGamepadProductVersion(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadFirmwareVersion")]
        public static extern Uint16 GetGamepadFirmwareVersion(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadSerial")]
        public static extern const char*  GetGamepadSerial(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadSteamHandle")]
        public static extern Uint64 GetGamepadSteamHandle(Gamepad* gamepad);

        [LinkName(" SDL_GetGamepadConnectionState")]
        public static extern JoystickConnectionState GetGamepadConnectionState(Gamepad* gamepad);

        [LinkName(" SDL_GetGamepadPowerInfo")]
        public static extern PowerState GetGamepadPowerInfo(Gamepad* gamepad, int* percent);

        [LinkName("SDL_GamepadConnected")]
        public static extern bool GamepadConnected(Gamepad* gamepad);

        [LinkName(" SDL_GetGamepadJoystick")]
        public static extern Joystick*  GetGamepadJoystick(Gamepad* gamepad);

        [LinkName("SDL_SetGamepadEventsEnabled")]
        public static extern void SetGamepadEventsEnabled(bool enabled);

        [LinkName("SDL_GamepadEventsEnabled")]
        public static extern bool GamepadEventsEnabled();

        [LinkName(" SDL_GetGamepadBindings")]
        public static extern GamepadBinding**  GetGamepadBindings(Gamepad* gamepad, int* count);

        [LinkName("SDL_UpdateGamepads")]
        public static extern void UpdateGamepads();

        [LinkName(" SDL_GetGamepadTypeFromString")]
        public static extern GamepadType GetGamepadTypeFromString(const char* str);

        [LinkName("SDL_GetGamepadStringForType")]
        public static extern const char*  GetGamepadStringForType(GamepadType type);

        [LinkName(" SDL_GetGamepadAxisFromString")]
        public static extern GamepadAxis GetGamepadAxisFromString(const char* str);

        [LinkName("SDL_GetGamepadStringForAxis")]
        public static extern const char*  GetGamepadStringForAxis(GamepadAxis axis);

        [LinkName("SDL_GamepadHasAxis")]
        public static extern bool GamepadHasAxis(Gamepad* gamepad, GamepadAxis axis);

        [LinkName("SDL_GetGamepadAxis")]
        public static extern Sint16 GetGamepadAxis(Gamepad* gamepad, GamepadAxis axis);

        [LinkName(" SDL_GetGamepadButtonFromString")]
        public static extern GamepadButton GetGamepadButtonFromString(const char* str);

        [LinkName("SDL_GetGamepadStringForButton")]
        public static extern const char*  GetGamepadStringForButton(GamepadButton button);

        [LinkName("SDL_GamepadHasButton")]
        public static extern bool GamepadHasButton(Gamepad* gamepad, GamepadButton button);

        [LinkName("SDL_GetGamepadButton")]
        public static extern bool GetGamepadButton(Gamepad* gamepad, GamepadButton button);

        [LinkName(" SDL_GetGamepadButtonLabelForType")]
        public static extern GamepadButtonLabel GetGamepadButtonLabelForType(GamepadType type, GamepadButton button);

        [LinkName(" SDL_GetGamepadButtonLabel")]
        public static extern GamepadButtonLabel GetGamepadButtonLabel(Gamepad* gamepad, GamepadButton button);

        [LinkName("SDL_GetNumGamepadTouchpads")]
        public static extern int GetNumGamepadTouchpads(Gamepad* gamepad);

        [LinkName("SDL_GetNumGamepadTouchpadFingers")]
        public static extern int GetNumGamepadTouchpadFingers(Gamepad* gamepad, int touchpad);

        [LinkName("SDL_GetGamepadTouchpadFinger")]
        public static extern bool GetGamepadTouchpadFinger(Gamepad* gamepad, int touchpad, int finger, bool* down, float* x, float* y, float* pressure);

        [LinkName("SDL_GamepadHasSensor")]
        public static extern bool GamepadHasSensor(Gamepad* gamepad, SensorType type);

        [LinkName("SDL_SetGamepadSensorEnabled")]
        public static extern bool SetGamepadSensorEnabled(Gamepad* gamepad, SensorType type, bool enabled);

        [LinkName("SDL_GamepadSensorEnabled")]
        public static extern bool GamepadSensorEnabled(Gamepad* gamepad, SensorType type);

        [LinkName("SDL_GetGamepadSensorDataRate")]
        public static extern float GetGamepadSensorDataRate(Gamepad* gamepad, SensorType type);

        [LinkName("SDL_GetGamepadSensorData")]
        public static extern bool GetGamepadSensorData(Gamepad* gamepad, SensorType type, float* data, int num_values);

        [LinkName("SDL_RumbleGamepad")]
        public static extern bool RumbleGamepad(Gamepad* gamepad, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);

        [LinkName("SDL_RumbleGamepadTriggers")]
        public static extern bool RumbleGamepadTriggers(Gamepad* gamepad, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);

        [LinkName("SDL_SetGamepadLED")]
        public static extern bool SetGamepadLED(Gamepad* gamepad, Uint8 red, Uint8 green, Uint8 blue);

        [LinkName("SDL_SendGamepadEffect")]
        public static extern bool SendGamepadEffect(Gamepad* gamepad, const void* data, int size);

        [LinkName("SDL_CloseGamepad")]
        public static extern void CloseGamepad(Gamepad* gamepad);

        [LinkName("SDL_GetGamepadAppleSFSymbolsNameForButton")]
        public static extern const char*  GetGamepadAppleSFSymbolsNameForButton(Gamepad* gamepad, GamepadButton button);

        [LinkName("SDL_GetGamepadAppleSFSymbolsNameForAxis")]
        public static extern const char*  GetGamepadAppleSFSymbolsNameForAxis(Gamepad* gamepad, GamepadAxis axis);


C:\Dev\SDL3-Beef\headers\SDL_gpu.h
        [LinkName("SDL_GPUSupportsShaderFormats")]
        public static extern bool GPUSupportsShaderFormats(

        [LinkName("SDL_GPUSupportsProperties")]
        public static extern bool GPUSupportsProperties(

        [LinkName(" *SDL_CreateGPUDevice")]
        public static extern GPUDevice* CreateGPUDevice(

        [LinkName(" *SDL_CreateGPUDeviceWithProperties")]
        public static extern GPUDevice* CreateGPUDeviceWithProperties(

        [LinkName("SDL_DestroyGPUDevice")]
        public static extern void DestroyGPUDevice(GPUDevice* device);

        [LinkName("SDL_GetNumGPUDrivers")]
        public static extern int GetNumGPUDrivers();

        [LinkName("SDL_GetGPUDriver")]
        public static extern const char*  GetGPUDriver(int index);

        [LinkName("SDL_GetGPUDeviceDriver")]
        public static extern const char*  GetGPUDeviceDriver(GPUDevice* device);

        [LinkName(" SDL_GetGPUShaderFormats")]
        public static extern GPUShaderFormat GetGPUShaderFormats(GPUDevice* device);

        [LinkName(" *SDL_CreateGPUComputePipeline")]
        public static extern GPUComputePipeline* CreateGPUComputePipeline(

        [LinkName(" *SDL_CreateGPUGraphicsPipeline")]
        public static extern GPUGraphicsPipeline* CreateGPUGraphicsPipeline(

        [LinkName(" *SDL_CreateGPUSampler")]
        public static extern GPUSampler* CreateGPUSampler(

        [LinkName(" *SDL_CreateGPUShader")]
        public static extern GPUShader* CreateGPUShader(

        [LinkName(" *SDL_CreateGPUTexture")]
        public static extern GPUTexture* CreateGPUTexture(

        [LinkName(" *SDL_CreateGPUBuffer")]
        public static extern GPUBuffer* CreateGPUBuffer(

        [LinkName(" *SDL_CreateGPUTransferBuffer")]
        public static extern GPUTransferBuffer* CreateGPUTransferBuffer(

        [LinkName("SDL_SetGPUBufferName")]
        public static extern void SetGPUBufferName(

        [LinkName("SDL_SetGPUTextureName")]
        public static extern void SetGPUTextureName(

        [LinkName("SDL_InsertGPUDebugLabel")]
        public static extern void InsertGPUDebugLabel(

        [LinkName("SDL_PushGPUDebugGroup")]
        public static extern void PushGPUDebugGroup(

        [LinkName("SDL_PopGPUDebugGroup")]
        public static extern void PopGPUDebugGroup(

        [LinkName("SDL_ReleaseGPUTexture")]
        public static extern void ReleaseGPUTexture(

        [LinkName("SDL_ReleaseGPUSampler")]
        public static extern void ReleaseGPUSampler(

        [LinkName("SDL_ReleaseGPUBuffer")]
        public static extern void ReleaseGPUBuffer(

        [LinkName("SDL_ReleaseGPUTransferBuffer")]
        public static extern void ReleaseGPUTransferBuffer(

        [LinkName("SDL_ReleaseGPUComputePipeline")]
        public static extern void ReleaseGPUComputePipeline(

        [LinkName("SDL_ReleaseGPUShader")]
        public static extern void ReleaseGPUShader(

        [LinkName("SDL_ReleaseGPUGraphicsPipeline")]
        public static extern void ReleaseGPUGraphicsPipeline(

        [LinkName(" *SDL_AcquireGPUCommandBuffer")]
        public static extern GPUCommandBuffer* AcquireGPUCommandBuffer(

        [LinkName("SDL_PushGPUVertexUniformData")]
        public static extern void PushGPUVertexUniformData(

        [LinkName("SDL_PushGPUFragmentUniformData")]
        public static extern void PushGPUFragmentUniformData(

        [LinkName("SDL_PushGPUComputeUniformData")]
        public static extern void PushGPUComputeUniformData(

        [LinkName(" *SDL_BeginGPURenderPass")]
        public static extern GPURenderPass* BeginGPURenderPass(

        [LinkName("SDL_BindGPUGraphicsPipeline")]
        public static extern void BindGPUGraphicsPipeline(

        [LinkName("SDL_SetGPUViewport")]
        public static extern void SetGPUViewport(

        [LinkName("SDL_SetGPUScissor")]
        public static extern void SetGPUScissor(

        [LinkName("SDL_SetGPUBlendConstants")]
        public static extern void SetGPUBlendConstants(

        [LinkName("SDL_SetGPUStencilReference")]
        public static extern void SetGPUStencilReference(

        [LinkName("SDL_BindGPUVertexBuffers")]
        public static extern void BindGPUVertexBuffers(

        [LinkName("SDL_BindGPUIndexBuffer")]
        public static extern void BindGPUIndexBuffer(

        [LinkName("SDL_BindGPUVertexSamplers")]
        public static extern void BindGPUVertexSamplers(

        [LinkName("SDL_BindGPUVertexStorageTextures")]
        public static extern void BindGPUVertexStorageTextures(

        [LinkName("SDL_BindGPUVertexStorageBuffers")]
        public static extern void BindGPUVertexStorageBuffers(

        [LinkName("SDL_BindGPUFragmentSamplers")]
        public static extern void BindGPUFragmentSamplers(

        [LinkName("SDL_BindGPUFragmentStorageTextures")]
        public static extern void BindGPUFragmentStorageTextures(

        [LinkName("SDL_BindGPUFragmentStorageBuffers")]
        public static extern void BindGPUFragmentStorageBuffers(

        [LinkName("SDL_DrawGPUIndexedPrimitives")]
        public static extern void DrawGPUIndexedPrimitives(

        [LinkName("SDL_DrawGPUPrimitives")]
        public static extern void DrawGPUPrimitives(

        [LinkName("SDL_DrawGPUPrimitivesIndirect")]
        public static extern void DrawGPUPrimitivesIndirect(

        [LinkName("SDL_DrawGPUIndexedPrimitivesIndirect")]
        public static extern void DrawGPUIndexedPrimitivesIndirect(

        [LinkName("SDL_EndGPURenderPass")]
        public static extern void EndGPURenderPass(

        [LinkName(" *SDL_BeginGPUComputePass")]
        public static extern GPUComputePass* BeginGPUComputePass(

        [LinkName("SDL_BindGPUComputePipeline")]
        public static extern void BindGPUComputePipeline(

        [LinkName("SDL_BindGPUComputeSamplers")]
        public static extern void BindGPUComputeSamplers(

        [LinkName("SDL_BindGPUComputeStorageTextures")]
        public static extern void BindGPUComputeStorageTextures(

        [LinkName("SDL_BindGPUComputeStorageBuffers")]
        public static extern void BindGPUComputeStorageBuffers(

        [LinkName("SDL_DispatchGPUCompute")]
        public static extern void DispatchGPUCompute(

        [LinkName("SDL_DispatchGPUComputeIndirect")]
        public static extern void DispatchGPUComputeIndirect(

        [LinkName("SDL_EndGPUComputePass")]
        public static extern void EndGPUComputePass(

        [LinkName(" *SDL_MapGPUTransferBuffer")]
        public static extern void* MapGPUTransferBuffer(

        [LinkName("SDL_UnmapGPUTransferBuffer")]
        public static extern void UnmapGPUTransferBuffer(

        [LinkName(" *SDL_BeginGPUCopyPass")]
        public static extern GPUCopyPass* BeginGPUCopyPass(

        [LinkName("SDL_UploadToGPUTexture")]
        public static extern void UploadToGPUTexture(

        [LinkName("SDL_UploadToGPUBuffer")]
        public static extern void UploadToGPUBuffer(

        [LinkName("SDL_CopyGPUTextureToTexture")]
        public static extern void CopyGPUTextureToTexture(

        [LinkName("SDL_CopyGPUBufferToBuffer")]
        public static extern void CopyGPUBufferToBuffer(

        [LinkName("SDL_DownloadFromGPUTexture")]
        public static extern void DownloadFromGPUTexture(

        [LinkName("SDL_DownloadFromGPUBuffer")]
        public static extern void DownloadFromGPUBuffer(

        [LinkName("SDL_EndGPUCopyPass")]
        public static extern void EndGPUCopyPass(

        [LinkName("SDL_GenerateMipmapsForGPUTexture")]
        public static extern void GenerateMipmapsForGPUTexture(

        [LinkName("SDL_BlitGPUTexture")]
        public static extern void BlitGPUTexture(

        [LinkName("SDL_WindowSupportsGPUSwapchainComposition")]
        public static extern bool WindowSupportsGPUSwapchainComposition(

        [LinkName("SDL_WindowSupportsGPUPresentMode")]
        public static extern bool WindowSupportsGPUPresentMode(

        [LinkName("SDL_ClaimWindowForGPUDevice")]
        public static extern bool ClaimWindowForGPUDevice(

        [LinkName("SDL_ReleaseWindowFromGPUDevice")]
        public static extern void ReleaseWindowFromGPUDevice(

        [LinkName("SDL_SetGPUSwapchainParameters")]
        public static extern bool SetGPUSwapchainParameters(

        [LinkName(" SDL_GetGPUSwapchainTextureFormat")]
        public static extern GPUTextureFormat GetGPUSwapchainTextureFormat(

        [LinkName("SDL_AcquireGPUSwapchainTexture")]
        public static extern bool AcquireGPUSwapchainTexture(

        [LinkName("SDL_SubmitGPUCommandBuffer")]
        public static extern bool SubmitGPUCommandBuffer(

        [LinkName(" *SDL_SubmitGPUCommandBufferAndAcquireFence")]
        public static extern GPUFence* SubmitGPUCommandBufferAndAcquireFence(

        [LinkName("SDL_WaitForGPUIdle")]
        public static extern bool WaitForGPUIdle(

        [LinkName("SDL_WaitForGPUFences")]
        public static extern bool WaitForGPUFences(

        [LinkName("SDL_QueryGPUFence")]
        public static extern bool QueryGPUFence(

        [LinkName("SDL_ReleaseGPUFence")]
        public static extern void ReleaseGPUFence(

        [LinkName("SDL_GPUTextureFormatTexelBlockSize")]
        public static extern Uint32 GPUTextureFormatTexelBlockSize(

        [LinkName("SDL_GPUTextureSupportsFormat")]
        public static extern bool GPUTextureSupportsFormat(

        [LinkName("SDL_GPUTextureSupportsSampleCount")]
        public static extern bool GPUTextureSupportsSampleCount(

        [LinkName("SDL_CalculateGPUTextureFormatSize")]
        public static extern Uint32 CalculateGPUTextureFormatSize(

        [LinkName("SDL_GDKSuspendGPU")]
        public static extern void GDKSuspendGPU(GPUDevice* device);

        [LinkName("SDL_GDKResumeGPU")]
        public static extern void GDKResumeGPU(GPUDevice* device);


C:\Dev\SDL3-Beef\headers\SDL_guid.h
        [LinkName("SDL_GUIDToString")]
        public static extern void GUIDToString(GUID guid, char* pszGUID, int cbGUID);

        [LinkName(" SDL_StringToGUID")]
        public static extern GUID StringToGUID(const char* pchGUID);


C:\Dev\SDL3-Beef\headers\SDL_haptic.h
        [LinkName(" SDL_GetHaptics")]
        public static extern HapticID*  GetHaptics(int* count);

        [LinkName("SDL_GetHapticNameForID")]
        public static extern const char*  GetHapticNameForID(HapticID instance_id);

        [LinkName(" SDL_OpenHaptic")]
        public static extern Haptic*  OpenHaptic(HapticID instance_id);

        [LinkName(" SDL_GetHapticFromID")]
        public static extern Haptic*  GetHapticFromID(HapticID instance_id);

        [LinkName(" SDL_GetHapticID")]
        public static extern HapticID GetHapticID(Haptic* haptic);

        [LinkName("SDL_GetHapticName")]
        public static extern const char*  GetHapticName(Haptic* haptic);

        [LinkName("SDL_IsMouseHaptic")]
        public static extern bool IsMouseHaptic();

        [LinkName(" SDL_OpenHapticFromMouse")]
        public static extern Haptic*  OpenHapticFromMouse();

        [LinkName("SDL_IsJoystickHaptic")]
        public static extern bool IsJoystickHaptic(Joystick* joystick);

        [LinkName(" SDL_OpenHapticFromJoystick")]
        public static extern Haptic*  OpenHapticFromJoystick(Joystick* joystick);

        [LinkName("SDL_CloseHaptic")]
        public static extern void CloseHaptic(Haptic* haptic);

        [LinkName("SDL_GetMaxHapticEffects")]
        public static extern int GetMaxHapticEffects(Haptic* haptic);

        [LinkName("SDL_GetMaxHapticEffectsPlaying")]
        public static extern int GetMaxHapticEffectsPlaying(Haptic* haptic);

        [LinkName("SDL_GetHapticFeatures")]
        public static extern Uint32 GetHapticFeatures(Haptic* haptic);

        [LinkName("SDL_GetNumHapticAxes")]
        public static extern int GetNumHapticAxes(Haptic* haptic);

        [LinkName("SDL_HapticEffectSupported")]
        public static extern bool HapticEffectSupported(Haptic* haptic, const HapticEffect* effect);

        [LinkName("SDL_CreateHapticEffect")]
        public static extern int CreateHapticEffect(Haptic* haptic, const HapticEffect* effect);

        [LinkName("SDL_UpdateHapticEffect")]
        public static extern bool UpdateHapticEffect(Haptic* haptic, int effect, const HapticEffect* data);

        [LinkName("SDL_RunHapticEffect")]
        public static extern bool RunHapticEffect(Haptic* haptic, int effect, Uint32 iterations);

        [LinkName("SDL_StopHapticEffect")]
        public static extern bool StopHapticEffect(Haptic* haptic, int effect);

        [LinkName("SDL_DestroyHapticEffect")]
        public static extern void DestroyHapticEffect(Haptic* haptic, int effect);

        [LinkName("SDL_GetHapticEffectStatus")]
        public static extern bool GetHapticEffectStatus(Haptic* haptic, int effect);

        [LinkName("SDL_SetHapticGain")]
        public static extern bool SetHapticGain(Haptic* haptic, int gain);

        [LinkName("SDL_SetHapticAutocenter")]
        public static extern bool SetHapticAutocenter(Haptic* haptic, int autocenter);

        [LinkName("SDL_PauseHaptic")]
        public static extern bool PauseHaptic(Haptic* haptic);

        [LinkName("SDL_ResumeHaptic")]
        public static extern bool ResumeHaptic(Haptic* haptic);

        [LinkName("SDL_StopHapticEffects")]
        public static extern bool StopHapticEffects(Haptic* haptic);

        [LinkName("SDL_HapticRumbleSupported")]
        public static extern bool HapticRumbleSupported(Haptic* haptic);

        [LinkName("SDL_InitHapticRumble")]
        public static extern bool InitHapticRumble(Haptic* haptic);

        [LinkName("SDL_PlayHapticRumble")]
        public static extern bool PlayHapticRumble(Haptic* haptic, float strength, Uint32 length);

        [LinkName("SDL_StopHapticRumble")]
        public static extern bool StopHapticRumble(Haptic* haptic);


C:\Dev\SDL3-Beef\headers\SDL_hidapi.h
        [LinkName("SDL_hid_init")]
        public static extern int hid_init();

        [LinkName("SDL_hid_exit")]
        public static extern int hid_exit();

        [LinkName("SDL_hid_device_change_count")]
        public static extern Uint32 hid_device_change_count();

        [LinkName(" SDL_hid_enumerate")]
        public static extern hid_device_info*  hid_enumerate(unsigned short vendor_id, unsigned short product_id);

        [LinkName("SDL_hid_free_enumeration")]
        public static extern void hid_free_enumeration(hid_device_info* devs);

        [LinkName(" SDL_hid_open")]
        public static extern hid_device*  hid_open(unsigned short vendor_id, unsigned short product_id, const wchar_t* serial_number);

        [LinkName(" SDL_hid_open_path")]
        public static extern hid_device*  hid_open_path(const char* path);

        [LinkName("SDL_hid_write")]
        public static extern int hid_write(hid_device* dev, const unsigned char* data, size_t length);

        [LinkName("SDL_hid_read_timeout")]
        public static extern int hid_read_timeout(hid_device* dev, unsigned char* data, size_t length, int milliseconds);

        [LinkName("SDL_hid_read")]
        public static extern int hid_read(hid_device* dev, unsigned char* data, size_t length);

        [LinkName("SDL_hid_set_nonblocking")]
        public static extern int hid_set_nonblocking(hid_device* dev, int nonblock);

        [LinkName("SDL_hid_send_feature_report")]
        public static extern int hid_send_feature_report(hid_device* dev, const unsigned char* data, size_t length);

        [LinkName("SDL_hid_get_feature_report")]
        public static extern int hid_get_feature_report(hid_device* dev, unsigned char* data, size_t length);

        [LinkName("SDL_hid_get_input_report")]
        public static extern int hid_get_input_report(hid_device* dev, unsigned char* data, size_t length);

        [LinkName("SDL_hid_close")]
        public static extern int hid_close(hid_device* dev);

        [LinkName("SDL_hid_get_manufacturer_string")]
        public static extern int hid_get_manufacturer_string(hid_device* dev, wchar_t* string, size_t maxlen);

        [LinkName("SDL_hid_get_product_string")]
        public static extern int hid_get_product_string(hid_device* dev, wchar_t* string, size_t maxlen);

        [LinkName("SDL_hid_get_serial_number_string")]
        public static extern int hid_get_serial_number_string(hid_device* dev, wchar_t* string, size_t maxlen);

        [LinkName("SDL_hid_get_indexed_string")]
        public static extern int hid_get_indexed_string(hid_device* dev, int string_index, wchar_t* string, size_t maxlen);

        [LinkName(" SDL_hid_get_device_info")]
        public static extern hid_device_info*  hid_get_device_info(hid_device* dev);

        [LinkName("SDL_hid_get_report_descriptor")]
        public static extern int hid_get_report_descriptor(hid_device* dev, unsigned char* buf, size_t buf_size);

        [LinkName("SDL_hid_ble_scan")]
        public static extern void hid_ble_scan(bool active);

C:\Dev\SDL3-Beef\headers\SDL_iostream.h
        [LinkName(" SDL_IOFromFile")]
        public static extern IOStream*  IOFromFile(const char* file, const char* mode);

        [LinkName(" SDL_IOFromMem")]
        public static extern IOStream*  IOFromMem(void* mem, size_t size);

        [LinkName(" SDL_IOFromConstMem")]
        public static extern IOStream*  IOFromConstMem(const void* mem, size_t size);

        [LinkName(" SDL_IOFromDynamicMem")]
        public static extern IOStream*  IOFromDynamicMem();

        [LinkName(" SDL_OpenIO")]
        public static extern IOStream*  OpenIO(const IOStreamInterface* iface, void* userdata);

        [LinkName("SDL_CloseIO")]
        public static extern bool CloseIO(IOStream* context);

        [LinkName(" SDL_GetIOProperties")]
        public static extern PropertiesID GetIOProperties(IOStream* context);

        [LinkName(" SDL_GetIOStatus")]
        public static extern IOStatus GetIOStatus(IOStream* context);

        [LinkName("SDL_GetIOSize")]
        public static extern Sint64 GetIOSize(IOStream* context);

        [LinkName("SDL_SeekIO")]
        public static extern Sint64 SeekIO(IOStream* context, Sint64 offset, IOWhence whence);

        [LinkName("SDL_TellIO")]
        public static extern Sint64 TellIO(IOStream* context);

        [LinkName("SDL_ReadIO")]
        public static extern size_t ReadIO(IOStream* context, void* ptr, size_t size);

        [LinkName("SDL_WriteIO")]
        public static extern size_t WriteIO(IOStream* context, const void* ptr, size_t size);

        [LinkName("SDL_IOprintf")]
        public static extern size_t IOprintf(IOStream* context, PRINTF_FORMAT_STRING const char* fmt, ...)  PRINTF_VARARG_FUNC(2);

        [LinkName("SDL_IOvprintf")]
        public static extern size_t IOvprintf(IOStream* context, PRINTF_FORMAT_STRING const char* fmt, va_list ap) PRINTF_VARARG_FUNCV(2);

        [LinkName("SDL_FlushIO")]
        public static extern bool FlushIO(IOStream* context);

        [LinkName("SDL_LoadFile_IO")]
        public static extern void*  LoadFile_IO(IOStream* src, size_t* datasize, bool closeio);

        [LinkName("SDL_LoadFile")]
        public static extern void*  LoadFile(const char* file, size_t* datasize);

        [LinkName("SDL_ReadU8")]
        public static extern bool ReadU8(IOStream* src, Uint8* value);

        [LinkName("SDL_ReadS8")]
        public static extern bool ReadS8(IOStream* src, Sint8* value);

        [LinkName("SDL_ReadU16LE")]
        public static extern bool ReadU16LE(IOStream* src, Uint16* value);

        [LinkName("SDL_ReadS16LE")]
        public static extern bool ReadS16LE(IOStream* src, Sint16* value);

        [LinkName("SDL_ReadU16BE")]
        public static extern bool ReadU16BE(IOStream* src, Uint16* value);

        [LinkName("SDL_ReadS16BE")]
        public static extern bool ReadS16BE(IOStream* src, Sint16* value);

        [LinkName("SDL_ReadU32LE")]
        public static extern bool ReadU32LE(IOStream* src, Uint32* value);

        [LinkName("SDL_ReadS32LE")]
        public static extern bool ReadS32LE(IOStream* src, Sint32* value);

        [LinkName("SDL_ReadU32BE")]
        public static extern bool ReadU32BE(IOStream* src, Uint32* value);

        [LinkName("SDL_ReadS32BE")]
        public static extern bool ReadS32BE(IOStream* src, Sint32* value);

        [LinkName("SDL_ReadU64LE")]
        public static extern bool ReadU64LE(IOStream* src, Uint64* value);

        [LinkName("SDL_ReadS64LE")]
        public static extern bool ReadS64LE(IOStream* src, Sint64* value);

        [LinkName("SDL_ReadU64BE")]
        public static extern bool ReadU64BE(IOStream* src, Uint64* value);

        [LinkName("SDL_ReadS64BE")]
        public static extern bool ReadS64BE(IOStream* src, Sint64* value);

        [LinkName("SDL_WriteU8")]
        public static extern bool WriteU8(IOStream* dst, Uint8 value);

        [LinkName("SDL_WriteS8")]
        public static extern bool WriteS8(IOStream* dst, Sint8 value);

        [LinkName("SDL_WriteU16LE")]
        public static extern bool WriteU16LE(IOStream* dst, Uint16 value);

        [LinkName("SDL_WriteS16LE")]
        public static extern bool WriteS16LE(IOStream* dst, Sint16 value);

        [LinkName("SDL_WriteU16BE")]
        public static extern bool WriteU16BE(IOStream* dst, Uint16 value);

        [LinkName("SDL_WriteS16BE")]
        public static extern bool WriteS16BE(IOStream* dst, Sint16 value);

        [LinkName("SDL_WriteU32LE")]
        public static extern bool WriteU32LE(IOStream* dst, Uint32 value);

        [LinkName("SDL_WriteS32LE")]
        public static extern bool WriteS32LE(IOStream* dst, Sint32 value);

        [LinkName("SDL_WriteU32BE")]
        public static extern bool WriteU32BE(IOStream* dst, Uint32 value);

        [LinkName("SDL_WriteS32BE")]
        public static extern bool WriteS32BE(IOStream* dst, Sint32 value);

        [LinkName("SDL_WriteU64LE")]
        public static extern bool WriteU64LE(IOStream* dst, Uint64 value);

        [LinkName("SDL_WriteS64LE")]
        public static extern bool WriteS64LE(IOStream* dst, Sint64 value);

        [LinkName("SDL_WriteU64BE")]
        public static extern bool WriteU64BE(IOStream* dst, Uint64 value);

        [LinkName("SDL_WriteS64BE")]
        public static extern bool WriteS64BE(IOStream* dst, Sint64 value);


C:\Dev\SDL3-Beef\headers\SDL_joystick.h
        [LinkName("SDL_LockJoysticks")]
        public static extern void LockJoysticks() ACQUIRE(joystick_lock);

        [LinkName("SDL_UnlockJoysticks")]
        public static extern void UnlockJoysticks() RELEASE(joystick_lock);

        [LinkName("SDL_HasJoystick")]
        public static extern bool HasJoystick();

        [LinkName(" SDL_GetJoysticks")]
        public static extern JoystickID*  GetJoysticks(int* count);

        [LinkName("SDL_GetJoystickNameForID")]
        public static extern const char*  GetJoystickNameForID(JoystickID instance_id);

        [LinkName("SDL_GetJoystickPathForID")]
        public static extern const char*  GetJoystickPathForID(JoystickID instance_id);

        [LinkName("SDL_GetJoystickPlayerIndexForID")]
        public static extern int GetJoystickPlayerIndexForID(JoystickID instance_id);

        [LinkName(" SDL_GetJoystickGUIDForID")]
        public static extern GUID GetJoystickGUIDForID(JoystickID instance_id);

        [LinkName("SDL_GetJoystickVendorForID")]
        public static extern Uint16 GetJoystickVendorForID(JoystickID instance_id);

        [LinkName("SDL_GetJoystickProductForID")]
        public static extern Uint16 GetJoystickProductForID(JoystickID instance_id);

        [LinkName("SDL_GetJoystickProductVersionForID")]
        public static extern Uint16 GetJoystickProductVersionForID(JoystickID instance_id);

        [LinkName(" SDL_GetJoystickTypeForID")]
        public static extern JoystickType GetJoystickTypeForID(JoystickID instance_id);

        [LinkName(" SDL_OpenJoystick")]
        public static extern Joystick*  OpenJoystick(JoystickID instance_id);

        [LinkName(" SDL_GetJoystickFromID")]
        public static extern Joystick*  GetJoystickFromID(JoystickID instance_id);

        [LinkName(" SDL_GetJoystickFromPlayerIndex")]
        public static extern Joystick*  GetJoystickFromPlayerIndex(int player_index);

        [LinkName(" SDL_AttachVirtualJoystick")]
        public static extern JoystickID AttachVirtualJoystick(const VirtualJoystickDesc* desc);

        [LinkName("SDL_DetachVirtualJoystick")]
        public static extern bool DetachVirtualJoystick(JoystickID instance_id);

        [LinkName("SDL_IsJoystickVirtual")]
        public static extern bool IsJoystickVirtual(JoystickID instance_id);

        [LinkName("SDL_SetJoystickVirtualAxis")]
        public static extern bool SetJoystickVirtualAxis(Joystick* joystick, int axis, Sint16 value);

        [LinkName("SDL_SetJoystickVirtualBall")]
        public static extern bool SetJoystickVirtualBall(Joystick* joystick, int ball, Sint16 xrel, Sint16 yrel);

        [LinkName("SDL_SetJoystickVirtualButton")]
        public static extern bool SetJoystickVirtualButton(Joystick* joystick, int button, bool down);

        [LinkName("SDL_SetJoystickVirtualHat")]
        public static extern bool SetJoystickVirtualHat(Joystick* joystick, int hat, Uint8 value);

        [LinkName("SDL_SetJoystickVirtualTouchpad")]
        public static extern bool SetJoystickVirtualTouchpad(Joystick* joystick, int touchpad, int finger, bool down, float x, float y, float pressure);

        [LinkName("SDL_SendJoystickVirtualSensorData")]
        public static extern bool SendJoystickVirtualSensorData(Joystick* joystick, SensorType type, Uint64 sensor_timestamp, const float* data, int num_values);

        [LinkName(" SDL_GetJoystickProperties")]
        public static extern PropertiesID GetJoystickProperties(Joystick* joystick);

        [LinkName("SDL_GetJoystickName")]
        public static extern const char*  GetJoystickName(Joystick* joystick);

        [LinkName("SDL_GetJoystickPath")]
        public static extern const char*  GetJoystickPath(Joystick* joystick);

        [LinkName("SDL_GetJoystickPlayerIndex")]
        public static extern int GetJoystickPlayerIndex(Joystick* joystick);

        [LinkName("SDL_SetJoystickPlayerIndex")]
        public static extern bool SetJoystickPlayerIndex(Joystick* joystick, int player_index);

        [LinkName(" SDL_GetJoystickGUID")]
        public static extern GUID GetJoystickGUID(Joystick* joystick);

        [LinkName("SDL_GetJoystickVendor")]
        public static extern Uint16 GetJoystickVendor(Joystick* joystick);

        [LinkName("SDL_GetJoystickProduct")]
        public static extern Uint16 GetJoystickProduct(Joystick* joystick);

        [LinkName("SDL_GetJoystickProductVersion")]
        public static extern Uint16 GetJoystickProductVersion(Joystick* joystick);

        [LinkName("SDL_GetJoystickFirmwareVersion")]
        public static extern Uint16 GetJoystickFirmwareVersion(Joystick* joystick);

        [LinkName("SDL_GetJoystickSerial")]
        public static extern const char*  GetJoystickSerial(Joystick* joystick);

        [LinkName(" SDL_GetJoystickType")]
        public static extern JoystickType GetJoystickType(Joystick* joystick);

        [LinkName("SDL_GetJoystickGUIDInfo")]
        public static extern void GetJoystickGUIDInfo(GUID guid, Uint16* vendor, Uint16* product, Uint16* version, Uint16* crc16);

        [LinkName("SDL_JoystickConnected")]
        public static extern bool JoystickConnected(Joystick* joystick);

        [LinkName(" SDL_GetJoystickID")]
        public static extern JoystickID GetJoystickID(Joystick* joystick);

        [LinkName("SDL_GetNumJoystickAxes")]
        public static extern int GetNumJoystickAxes(Joystick* joystick);

        [LinkName("SDL_GetNumJoystickBalls")]
        public static extern int GetNumJoystickBalls(Joystick* joystick);

        [LinkName("SDL_GetNumJoystickHats")]
        public static extern int GetNumJoystickHats(Joystick* joystick);

        [LinkName("SDL_GetNumJoystickButtons")]
        public static extern int GetNumJoystickButtons(Joystick* joystick);

        [LinkName("SDL_SetJoystickEventsEnabled")]
        public static extern void SetJoystickEventsEnabled(bool enabled);

        [LinkName("SDL_JoystickEventsEnabled")]
        public static extern bool JoystickEventsEnabled();

        [LinkName("SDL_UpdateJoysticks")]
        public static extern void UpdateJoysticks();

        [LinkName("SDL_GetJoystickAxis")]
        public static extern Sint16 GetJoystickAxis(Joystick* joystick, int axis);

        [LinkName("SDL_GetJoystickAxisInitialState")]
        public static extern bool GetJoystickAxisInitialState(Joystick* joystick, int axis, Sint16* state);

        [LinkName("SDL_GetJoystickBall")]
        public static extern bool GetJoystickBall(Joystick* joystick, int ball, int* dx, int* dy);

        [LinkName("SDL_GetJoystickHat")]
        public static extern Uint8 GetJoystickHat(Joystick* joystick, int hat);

        [LinkName("SDL_GetJoystickButton")]
        public static extern bool GetJoystickButton(Joystick* joystick, int button);

        [LinkName("SDL_RumbleJoystick")]
        public static extern bool RumbleJoystick(Joystick* joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);

        [LinkName("SDL_RumbleJoystickTriggers")]
        public static extern bool RumbleJoystickTriggers(Joystick* joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);

        [LinkName("SDL_SetJoystickLED")]
        public static extern bool SetJoystickLED(Joystick* joystick, Uint8 red, Uint8 green, Uint8 blue);

        [LinkName("SDL_SendJoystickEffect")]
        public static extern bool SendJoystickEffect(Joystick* joystick, const void* data, int size);

        [LinkName("SDL_CloseJoystick")]
        public static extern void CloseJoystick(Joystick* joystick);

        [LinkName(" SDL_GetJoystickConnectionState")]
        public static extern JoystickConnectionState GetJoystickConnectionState(Joystick* joystick);

        [LinkName(" SDL_GetJoystickPowerInfo")]
        public static extern PowerState GetJoystickPowerInfo(Joystick* joystick, int* percent);


C:\Dev\SDL3-Beef\headers\SDL_keyboard.h
        [LinkName("SDL_HasKeyboard")]
        public static extern bool HasKeyboard();

        [LinkName(" SDL_GetKeyboards")]
        public static extern KeyboardID*  GetKeyboards(int* count);

        [LinkName("SDL_GetKeyboardNameForID")]
        public static extern const char*  GetKeyboardNameForID(KeyboardID instance_id);

        [LinkName(" SDL_GetKeyboardFocus")]
        public static extern Window*  GetKeyboardFocus();

        [LinkName("SDL_GetKeyboardState")]
        public static extern const bool*  GetKeyboardState(int* numkeys);

        [LinkName("SDL_ResetKeyboard")]
        public static extern void ResetKeyboard();

        [LinkName(" SDL_GetModState")]
        public static extern Keymod GetModState();

        [LinkName("SDL_SetModState")]
        public static extern void SetModState(Keymod modstate);

        [LinkName(" SDL_GetKeyFromScancode")]
        public static extern Keycode GetKeyFromScancode(Scancode scancode, Keymod modstate, bool key_event);

        [LinkName(" SDL_GetScancodeFromKey")]
        public static extern Scancode GetScancodeFromKey(Keycode key, Keymod* modstate);

        [LinkName("SDL_SetScancodeName")]
        public static extern bool SetScancodeName(Scancode scancode, const char* name);

        [LinkName("SDL_GetScancodeName")]
        public static extern const char*  GetScancodeName(Scancode scancode);

        [LinkName(" SDL_GetScancodeFromName")]
        public static extern Scancode GetScancodeFromName(const char* name);

        [LinkName("SDL_GetKeyName")]
        public static extern const char*  GetKeyName(Keycode key);

        [LinkName(" SDL_GetKeyFromName")]
        public static extern Keycode GetKeyFromName(const char* name);

        [LinkName("SDL_StartTextInput")]
        public static extern bool StartTextInput(Window* window);

        [LinkName("SDL_StartTextInputWithProperties")]
        public static extern bool StartTextInputWithProperties(Window* window, PropertiesID props);

        [LinkName("SDL_TextInputActive")]
        public static extern bool TextInputActive(Window* window);

        [LinkName("SDL_StopTextInput")]
        public static extern bool StopTextInput(Window* window);

        [LinkName("SDL_ClearComposition")]
        public static extern bool ClearComposition(Window* window);

        [LinkName("SDL_SetTextInputArea")]
        public static extern bool SetTextInputArea(Window* window, const Rect* rect, int cursor);

        [LinkName("SDL_GetTextInputArea")]
        public static extern bool GetTextInputArea(Window* window, Rect* rect, int* cursor);

        [LinkName("SDL_HasScreenKeyboardSupport")]
        public static extern bool HasScreenKeyboardSupport();

        [LinkName("SDL_ScreenKeyboardShown")]
        public static extern bool ScreenKeyboardShown(Window* window);


C:\Dev\SDL3-Beef\headers\SDL_keycode.h

C:\Dev\SDL3-Beef\headers\SDL_loadso.h
        [LinkName(" SDL_LoadObject")]
        public static extern SharedObject*  LoadObject(const char* sofile);

        [LinkName(" SDL_LoadFunction")]
        public static extern FunctionPointer LoadFunction(SharedObject* handle, const char* name);

        [LinkName("SDL_UnloadObject")]
        public static extern void UnloadObject(SharedObject* handle);


C:\Dev\SDL3-Beef\headers\SDL_locale.h
        [LinkName(" SDL_GetPreferredLocales")]
        public static extern Locale**  GetPreferredLocales(int* count);

C:\Dev\SDL3-Beef\headers\SDL_messagebox.h
        [LinkName("SDL_ShowMessageBox")]
        public static extern bool ShowMessageBox(const MessageBoxData* messageboxdata, int* buttonid);

        [LinkName("SDL_ShowSimpleMessageBox")]
        public static extern bool ShowSimpleMessageBox(MessageBoxFlags flags, const char* title, const char* message, Window* window);


C:\Dev\SDL3-Beef\headers\SDL_metal.h
        [LinkName(" SDL_Metal_CreateView")]
        public static extern MetalView Metal_CreateView(Window* window);

        [LinkName("SDL_Metal_DestroyView")]
        public static extern void Metal_DestroyView(MetalView view);

        [LinkName("SDL_Metal_GetLayer")]
        public static extern void*  Metal_GetLayer(MetalView view);


C:\Dev\SDL3-Beef\headers\SDL_misc.h
        [LinkName("SDL_OpenURL")]
        public static extern bool OpenURL(const char* url);


C:\Dev\SDL3-Beef\headers\SDL_mouse.h
        [LinkName("SDL_HasMouse")]
        public static extern bool HasMouse();

        [LinkName(" SDL_GetMice")]
        public static extern MouseID*  GetMice(int* count);

        [LinkName("SDL_GetMouseNameForID")]
        public static extern const char*  GetMouseNameForID(MouseID instance_id);

        [LinkName(" SDL_GetMouseFocus")]
        public static extern Window*  GetMouseFocus();

        [LinkName(" SDL_GetMouseState")]
        public static extern MouseButtonFlags GetMouseState(float* x, float* y);

        [LinkName(" SDL_GetGlobalMouseState")]
        public static extern MouseButtonFlags GetGlobalMouseState(float* x, float* y);

        [LinkName(" SDL_GetRelativeMouseState")]
        public static extern MouseButtonFlags GetRelativeMouseState(float* x, float* y);

        [LinkName("SDL_WarpMouseInWindow")]
        public static extern void WarpMouseInWindow(Window*  window,

        [LinkName("SDL_WarpMouseGlobal")]
        public static extern bool WarpMouseGlobal(float x, float y);

        [LinkName("SDL_SetWindowRelativeMouseMode")]
        public static extern bool SetWindowRelativeMouseMode(Window* window, bool enabled);

        [LinkName("SDL_GetWindowRelativeMouseMode")]
        public static extern bool GetWindowRelativeMouseMode(Window* window);

        [LinkName("SDL_CaptureMouse")]
        public static extern bool CaptureMouse(bool enabled);

        [LinkName(" SDL_CreateCursor")]
        public static extern Cursor*  CreateCursor(const Uint8*  data,

        [LinkName(" SDL_CreateColorCursor")]
        public static extern Cursor*  CreateColorCursor(Surface* surface,

        [LinkName(" SDL_CreateSystemCursor")]
        public static extern Cursor*  CreateSystemCursor(SystemCursor id);

        [LinkName("SDL_SetCursor")]
        public static extern bool SetCursor(Cursor* cursor);

        [LinkName(" SDL_GetCursor")]
        public static extern Cursor*  GetCursor();

        [LinkName(" SDL_GetDefaultCursor")]
        public static extern Cursor*  GetDefaultCursor();

        [LinkName("SDL_DestroyCursor")]
        public static extern void DestroyCursor(Cursor* cursor);

        [LinkName("SDL_ShowCursor")]
        public static extern bool ShowCursor();

        [LinkName("SDL_HideCursor")]
        public static extern bool HideCursor();

        [LinkName("SDL_CursorVisible")]
        public static extern bool CursorVisible();


C:\Dev\SDL3-Beef\headers\SDL_mutex.h
        [LinkName(" SDL_CreateMutex")]
        public static extern Mutex*  CreateMutex();

        [LinkName("SDL_LockMutex")]
        public static extern void LockMutex(Mutex* mutex) ACQUIRE(mutex);

        [LinkName("SDL_TryLockMutex")]
        public static extern bool TryLockMutex(Mutex* mutex) TRY_ACQUIRE(0, mutex);

        [LinkName("SDL_UnlockMutex")]
        public static extern void UnlockMutex(Mutex* mutex) RELEASE(mutex);

        [LinkName("SDL_DestroyMutex")]
        public static extern void DestroyMutex(Mutex* mutex);

        [LinkName(" SDL_CreateRWLock")]
        public static extern RWLock*  CreateRWLock();

        [LinkName("SDL_LockRWLockForReading")]
        public static extern void LockRWLockForReading(RWLock* rwlock) ACQUIRE_SHARED(rwlock);

        [LinkName("SDL_LockRWLockForWriting")]
        public static extern void LockRWLockForWriting(RWLock* rwlock) ACQUIRE(rwlock);

        [LinkName("SDL_TryLockRWLockForReading")]
        public static extern bool TryLockRWLockForReading(RWLock* rwlock) TRY_ACQUIRE_SHARED(0, rwlock);

        [LinkName("SDL_TryLockRWLockForWriting")]
        public static extern bool TryLockRWLockForWriting(RWLock* rwlock) TRY_ACQUIRE(0, rwlock);

        [LinkName("SDL_UnlockRWLock")]
        public static extern void UnlockRWLock(RWLock* rwlock) RELEASE_GENERIC(rwlock);

        [LinkName("SDL_DestroyRWLock")]
        public static extern void DestroyRWLock(RWLock* rwlock);

        [LinkName(" SDL_CreateSemaphore")]
        public static extern Semaphore*  CreateSemaphore(Uint32 initial_value);

        [LinkName("SDL_DestroySemaphore")]
        public static extern void DestroySemaphore(Semaphore* sem);

        [LinkName("SDL_WaitSemaphore")]
        public static extern void WaitSemaphore(Semaphore* sem);

        [LinkName("SDL_TryWaitSemaphore")]
        public static extern bool TryWaitSemaphore(Semaphore* sem);

        [LinkName("SDL_WaitSemaphoreTimeout")]
        public static extern bool WaitSemaphoreTimeout(Semaphore* sem, Sint32 timeoutMS);

        [LinkName("SDL_SignalSemaphore")]
        public static extern void SignalSemaphore(Semaphore* sem);

        [LinkName("SDL_GetSemaphoreValue")]
        public static extern Uint32 GetSemaphoreValue(Semaphore* sem);

        [LinkName(" SDL_CreateCondition")]
        public static extern Condition*  CreateCondition();

        [LinkName("SDL_DestroyCondition")]
        public static extern void DestroyCondition(Condition* cond);

        [LinkName("SDL_SignalCondition")]
        public static extern void SignalCondition(Condition* cond);

        [LinkName("SDL_BroadcastCondition")]
        public static extern void BroadcastCondition(Condition* cond);

        [LinkName("SDL_WaitCondition")]
        public static extern void WaitCondition(Condition* cond, Mutex* mutex);

        [LinkName("SDL_WaitConditionTimeout")]
        public static extern bool WaitConditionTimeout(Condition* cond,

        [LinkName("SDL_ShouldInit")]
        public static extern bool ShouldInit(InitState* state);

        [LinkName("SDL_ShouldQuit")]
        public static extern bool ShouldQuit(InitState* state);

        [LinkName("SDL_SetInitialized")]
        public static extern void SetInitialized(InitState* state, bool initialized);


C:\Dev\SDL3-Beef\headers\SDL_oldnames.h

C:\Dev\SDL3-Beef\headers\SDL_opengl.h

C:\Dev\SDL3-Beef\headers\SDL_opengles.h

C:\Dev\SDL3-Beef\headers\SDL_opengles2.h

C:\Dev\SDL3-Beef\headers\SDL_opengles2_gl2.h

C:\Dev\SDL3-Beef\headers\SDL_opengles2_gl2ext.h

C:\Dev\SDL3-Beef\headers\SDL_opengles2_gl2platform.h

C:\Dev\SDL3-Beef\headers\SDL_opengles2_khrplatform.h

C:\Dev\SDL3-Beef\headers\SDL_opengl_glext.h

C:\Dev\SDL3-Beef\headers\SDL_pen.h

C:\Dev\SDL3-Beef\headers\SDL_pixels.h
        [LinkName("SDL_GetPixelFormatName")]
        public static extern const char*  GetPixelFormatName(PixelFormat format);

        [LinkName("SDL_GetMasksForPixelFormat")]
        public static extern bool GetMasksForPixelFormat(PixelFormat format, int* bpp, Uint32* Rmask, Uint32* Gmask, Uint32* Bmask, Uint32* Amask);

        [LinkName(" SDL_GetPixelFormatForMasks")]
        public static extern PixelFormat GetPixelFormatForMasks(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask);

        [LinkName(" SDL_GetPixelFormatDetails")]
        public static extern const PixelFormatDetails*  GetPixelFormatDetails(PixelFormat format);

        [LinkName(" SDL_CreatePalette")]
        public static extern Palette*  CreatePalette(int ncolors);

        [LinkName("SDL_SetPaletteColors")]
        public static extern bool SetPaletteColors(Palette* palette, const Color* colors, int firstcolor, int ncolors);

        [LinkName("SDL_DestroyPalette")]
        public static extern void DestroyPalette(Palette* palette);

        [LinkName("SDL_MapRGB")]
        public static extern Uint32 MapRGB(const PixelFormatDetails* format, const Palette* palette, Uint8 r, Uint8 g, Uint8 b);

        [LinkName("SDL_MapRGBA")]
        public static extern Uint32 MapRGBA(const PixelFormatDetails* format, const Palette* palette, Uint8 r, Uint8 g, Uint8 b, Uint8 a);

        [LinkName("SDL_GetRGB")]
        public static extern void GetRGB(Uint32 pixel, const PixelFormatDetails* format, const Palette* palette, Uint8* r, Uint8* g, Uint8* b);

        [LinkName("SDL_GetRGBA")]
        public static extern void GetRGBA(Uint32 pixel, const PixelFormatDetails* format, const Palette* palette, Uint8* r, Uint8* g, Uint8* b, Uint8* a);


C:\Dev\SDL3-Beef\headers\SDL_platform.h
        [LinkName("SDL_GetPlatform")]
        public static extern const char*  GetPlatform();


C:\Dev\SDL3-Beef\headers\SDL_platform_defines.h

C:\Dev\SDL3-Beef\headers\SDL_power.h
        [LinkName(" SDL_GetPowerInfo")]
        public static extern PowerState GetPowerInfo(int* seconds, int* percent);


C:\Dev\SDL3-Beef\headers\SDL_process.h
        [LinkName(" *SDL_CreateProcess")]
        public static extern Process* CreateProcess(const char*  const* args, bool pipe_stdio);

        [LinkName(" *SDL_CreateProcessWithProperties")]
        public static extern Process* CreateProcessWithProperties(PropertiesID props);

        [LinkName(" SDL_GetProcessProperties")]
        public static extern PropertiesID GetProcessProperties(Process* process);

        [LinkName("SDL_ReadProcess")]
        public static extern void*  ReadProcess(Process* process, size_t* datasize, int* exitcode);

        [LinkName(" *SDL_GetProcessInput")]
        public static extern IOStream* GetProcessInput(Process* process);

        [LinkName(" *SDL_GetProcessOutput")]
        public static extern IOStream* GetProcessOutput(Process* process);

        [LinkName("SDL_KillProcess")]
        public static extern bool KillProcess(Process* process, bool force);

        [LinkName("SDL_WaitProcess")]
        public static extern bool WaitProcess(Process* process, bool block, int* exitcode);

        [LinkName("SDL_DestroyProcess")]
        public static extern void DestroyProcess(Process* process);

C:\Dev\SDL3-Beef\headers\SDL_rect.h
        [LinkName("SDL_HasRectIntersection")]
        public static extern bool HasRectIntersection(const Rect* A, const Rect* B);

        [LinkName("SDL_GetRectIntersection")]
        public static extern bool GetRectIntersection(const Rect* A, const Rect* B, Rect* result);

        [LinkName("SDL_GetRectUnion")]
        public static extern bool GetRectUnion(const Rect* A, const Rect* B, Rect* result);

        [LinkName("SDL_GetRectEnclosingPoints")]
        public static extern bool GetRectEnclosingPoints(const Point* points, int count, const Rect* clip, Rect* result);

        [LinkName("SDL_GetRectAndLineIntersection")]
        public static extern bool GetRectAndLineIntersection(const Rect* rect, int* X1, int* Y1, int* X2, int* Y2);

        [LinkName("SDL_HasRectIntersectionFloat")]
        public static extern bool HasRectIntersectionFloat(const FRect* A, const FRect* B);

        [LinkName("SDL_GetRectIntersectionFloat")]
        public static extern bool GetRectIntersectionFloat(const FRect* A, const FRect* B, FRect* result);

        [LinkName("SDL_GetRectUnionFloat")]
        public static extern bool GetRectUnionFloat(const FRect* A, const FRect* B, FRect* result);

        [LinkName("SDL_GetRectEnclosingPointsFloat")]
        public static extern bool GetRectEnclosingPointsFloat(const FPoint* points, int count, const FRect* clip, FRect* result);

        [LinkName("SDL_GetRectAndLineIntersectionFloat")]
        public static extern bool GetRectAndLineIntersectionFloat(const FRect* rect, float* X1, float* Y1, float* X2, float* Y2);


C:\Dev\SDL3-Beef\headers\SDL_render.h
        [LinkName("SDL_GetNumRenderDrivers")]
        public static extern int GetNumRenderDrivers();

        [LinkName("SDL_GetRenderDriver")]
        public static extern const char*  GetRenderDriver(int index);

        [LinkName("SDL_CreateWindowAndRenderer")]
        public static extern bool CreateWindowAndRenderer(const char* title, int width, int height, WindowFlags window_flags, Window** window, Renderer** renderer);

        [LinkName(" SDL_CreateRenderer")]
        public static extern Renderer*  CreateRenderer(Window* window, const char* name);

        [LinkName(" SDL_CreateRendererWithProperties")]
        public static extern Renderer*  CreateRendererWithProperties(PropertiesID props);

        [LinkName(" SDL_CreateSoftwareRenderer")]
        public static extern Renderer*  CreateSoftwareRenderer(Surface* surface);

        [LinkName(" SDL_GetRenderer")]
        public static extern Renderer*  GetRenderer(Window* window);

        [LinkName(" SDL_GetRenderWindow")]
        public static extern Window*  GetRenderWindow(Renderer* renderer);

        [LinkName("SDL_GetRendererName")]
        public static extern const char*  GetRendererName(Renderer* renderer);

        [LinkName(" SDL_GetRendererProperties")]
        public static extern PropertiesID GetRendererProperties(Renderer* renderer);

        [LinkName("SDL_GetRenderOutputSize")]
        public static extern bool GetRenderOutputSize(Renderer* renderer, int* w, int* h);

        [LinkName("SDL_GetCurrentRenderOutputSize")]
        public static extern bool GetCurrentRenderOutputSize(Renderer* renderer, int* w, int* h);

        [LinkName(" SDL_CreateTexture")]
        public static extern Texture*  CreateTexture(Renderer* renderer, PixelFormat format, TextureAccess access, int w, int h);

        [LinkName(" SDL_CreateTextureFromSurface")]
        public static extern Texture*  CreateTextureFromSurface(Renderer* renderer, Surface* surface);

        [LinkName(" SDL_CreateTextureWithProperties")]
        public static extern Texture*  CreateTextureWithProperties(Renderer* renderer, PropertiesID props);

        [LinkName(" SDL_GetTextureProperties")]
        public static extern PropertiesID GetTextureProperties(Texture* texture);

        [LinkName(" SDL_GetRendererFromTexture")]
        public static extern Renderer*  GetRendererFromTexture(Texture* texture);

        [LinkName("SDL_GetTextureSize")]
        public static extern bool GetTextureSize(Texture* texture, float* w, float* h);

        [LinkName("SDL_SetTextureColorMod")]
        public static extern bool SetTextureColorMod(Texture* texture, Uint8 r, Uint8 g, Uint8 b);

        [LinkName("SDL_SetTextureColorModFloat")]
        public static extern bool SetTextureColorModFloat(Texture* texture, float r, float g, float b);

        [LinkName("SDL_GetTextureColorMod")]
        public static extern bool GetTextureColorMod(Texture* texture, Uint8* r, Uint8* g, Uint8* b);

        [LinkName("SDL_GetTextureColorModFloat")]
        public static extern bool GetTextureColorModFloat(Texture* texture, float* r, float* g, float* b);

        [LinkName("SDL_SetTextureAlphaMod")]
        public static extern bool SetTextureAlphaMod(Texture* texture, Uint8 alpha);

        [LinkName("SDL_SetTextureAlphaModFloat")]
        public static extern bool SetTextureAlphaModFloat(Texture* texture, float alpha);

        [LinkName("SDL_GetTextureAlphaMod")]
        public static extern bool GetTextureAlphaMod(Texture* texture, Uint8* alpha);

        [LinkName("SDL_GetTextureAlphaModFloat")]
        public static extern bool GetTextureAlphaModFloat(Texture* texture, float* alpha);

        [LinkName("SDL_SetTextureBlendMode")]
        public static extern bool SetTextureBlendMode(Texture* texture, BlendMode blendMode);

        [LinkName("SDL_GetTextureBlendMode")]
        public static extern bool GetTextureBlendMode(Texture* texture, BlendMode* blendMode);

        [LinkName("SDL_SetTextureScaleMode")]
        public static extern bool SetTextureScaleMode(Texture* texture, ScaleMode scaleMode);

        [LinkName("SDL_GetTextureScaleMode")]
        public static extern bool GetTextureScaleMode(Texture* texture, ScaleMode* scaleMode);

        [LinkName("SDL_UpdateTexture")]
        public static extern bool UpdateTexture(Texture* texture, const Rect* rect, const void* pixels, int pitch);

        [LinkName("SDL_UpdateYUVTexture")]
        public static extern bool UpdateYUVTexture(Texture* texture,

        [LinkName("SDL_UpdateNVTexture")]
        public static extern bool UpdateNVTexture(Texture* texture,

        [LinkName("SDL_LockTexture")]
        public static extern bool LockTexture(Texture* texture,

        [LinkName("SDL_LockTextureToSurface")]
        public static extern bool LockTextureToSurface(Texture* texture, const Rect* rect, Surface** surface);

        [LinkName("SDL_UnlockTexture")]
        public static extern void UnlockTexture(Texture* texture);

        [LinkName("SDL_SetRenderTarget")]
        public static extern bool SetRenderTarget(Renderer* renderer, Texture* texture);

        [LinkName(" SDL_GetRenderTarget")]
        public static extern Texture*  GetRenderTarget(Renderer* renderer);

        [LinkName("SDL_SetRenderLogicalPresentation")]
        public static extern bool SetRenderLogicalPresentation(Renderer* renderer, int w, int h, RendererLogicalPresentation mode);

        [LinkName("SDL_GetRenderLogicalPresentation")]
        public static extern bool GetRenderLogicalPresentation(Renderer* renderer, int* w, int* h, RendererLogicalPresentation* mode);

        [LinkName("SDL_GetRenderLogicalPresentationRect")]
        public static extern bool GetRenderLogicalPresentationRect(Renderer* renderer, FRect* rect);

        [LinkName("SDL_RenderCoordinatesFromWindow")]
        public static extern bool RenderCoordinatesFromWindow(Renderer* renderer, float window_x, float window_y, float* x, float* y);

        [LinkName("SDL_RenderCoordinatesToWindow")]
        public static extern bool RenderCoordinatesToWindow(Renderer* renderer, float x, float y, float* window_x, float* window_y);

        [LinkName("SDL_ConvertEventToRenderCoordinates")]
        public static extern bool ConvertEventToRenderCoordinates(Renderer* renderer, Event* event);

        [LinkName("SDL_SetRenderViewport")]
        public static extern bool SetRenderViewport(Renderer* renderer, const Rect* rect);

        [LinkName("SDL_GetRenderViewport")]
        public static extern bool GetRenderViewport(Renderer* renderer, Rect* rect);

        [LinkName("SDL_RenderViewportSet")]
        public static extern bool RenderViewportSet(Renderer* renderer);

        [LinkName("SDL_GetRenderSafeArea")]
        public static extern bool GetRenderSafeArea(Renderer* renderer, Rect* rect);

        [LinkName("SDL_SetRenderClipRect")]
        public static extern bool SetRenderClipRect(Renderer* renderer, const Rect* rect);

        [LinkName("SDL_GetRenderClipRect")]
        public static extern bool GetRenderClipRect(Renderer* renderer, Rect* rect);

        [LinkName("SDL_RenderClipEnabled")]
        public static extern bool RenderClipEnabled(Renderer* renderer);

        [LinkName("SDL_SetRenderScale")]
        public static extern bool SetRenderScale(Renderer* renderer, float scaleX, float scaleY);

        [LinkName("SDL_GetRenderScale")]
        public static extern bool GetRenderScale(Renderer* renderer, float* scaleX, float* scaleY);

        [LinkName("SDL_SetRenderDrawColor")]
        public static extern bool SetRenderDrawColor(Renderer* renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a);

        [LinkName("SDL_SetRenderDrawColorFloat")]
        public static extern bool SetRenderDrawColorFloat(Renderer* renderer, float r, float g, float b, float a);

        [LinkName("SDL_GetRenderDrawColor")]
        public static extern bool GetRenderDrawColor(Renderer* renderer, Uint8* r, Uint8* g, Uint8* b, Uint8* a);

        [LinkName("SDL_GetRenderDrawColorFloat")]
        public static extern bool GetRenderDrawColorFloat(Renderer* renderer, float* r, float* g, float* b, float* a);

        [LinkName("SDL_SetRenderColorScale")]
        public static extern bool SetRenderColorScale(Renderer* renderer, float scale);

        [LinkName("SDL_GetRenderColorScale")]
        public static extern bool GetRenderColorScale(Renderer* renderer, float* scale);

        [LinkName("SDL_SetRenderDrawBlendMode")]
        public static extern bool SetRenderDrawBlendMode(Renderer* renderer, BlendMode blendMode);

        [LinkName("SDL_GetRenderDrawBlendMode")]
        public static extern bool GetRenderDrawBlendMode(Renderer* renderer, BlendMode* blendMode);

        [LinkName("SDL_RenderClear")]
        public static extern bool RenderClear(Renderer* renderer);

        [LinkName("SDL_RenderPoint")]
        public static extern bool RenderPoint(Renderer* renderer, float x, float y);

        [LinkName("SDL_RenderPoints")]
        public static extern bool RenderPoints(Renderer* renderer, const FPoint* points, int count);

        [LinkName("SDL_RenderLine")]
        public static extern bool RenderLine(Renderer* renderer, float x1, float y1, float x2, float y2);

        [LinkName("SDL_RenderLines")]
        public static extern bool RenderLines(Renderer* renderer, const FPoint* points, int count);

        [LinkName("SDL_RenderRect")]
        public static extern bool RenderRect(Renderer* renderer, const FRect* rect);

        [LinkName("SDL_RenderRects")]
        public static extern bool RenderRects(Renderer* renderer, const FRect* rects, int count);

        [LinkName("SDL_RenderFillRect")]
        public static extern bool RenderFillRect(Renderer* renderer, const FRect* rect);

        [LinkName("SDL_RenderFillRects")]
        public static extern bool RenderFillRects(Renderer* renderer, const FRect* rects, int count);

        [LinkName("SDL_RenderTexture")]
        public static extern bool RenderTexture(Renderer* renderer, Texture* texture, const FRect* srcrect, const FRect* dstrect);

        [LinkName("SDL_RenderTextureRotated")]
        public static extern bool RenderTextureRotated(Renderer* renderer, Texture* texture,

        [LinkName("SDL_RenderTextureTiled")]
        public static extern bool RenderTextureTiled(Renderer* renderer, Texture* texture, const FRect* srcrect, float scale, const FRect* dstrect);

        [LinkName("SDL_RenderTexture9Grid")]
        public static extern bool RenderTexture9Grid(Renderer* renderer, Texture* texture, const FRect* srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const FRect* dstrect);

        [LinkName("SDL_RenderGeometry")]
        public static extern bool RenderGeometry(Renderer* renderer,

        [LinkName("SDL_RenderGeometryRaw")]
        public static extern bool RenderGeometryRaw(Renderer* renderer,

        [LinkName(" SDL_RenderReadPixels")]
        public static extern Surface*  RenderReadPixels(Renderer* renderer, const Rect* rect);

        [LinkName("SDL_RenderPresent")]
        public static extern bool RenderPresent(Renderer* renderer);

        [LinkName("SDL_DestroyTexture")]
        public static extern void DestroyTexture(Texture* texture);

        [LinkName("SDL_DestroyRenderer")]
        public static extern void DestroyRenderer(Renderer* renderer);

        [LinkName("SDL_FlushRenderer")]
        public static extern bool FlushRenderer(Renderer* renderer);

        [LinkName("SDL_GetRenderMetalLayer")]
        public static extern void*  GetRenderMetalLayer(Renderer* renderer);

        [LinkName("SDL_GetRenderMetalCommandEncoder")]
        public static extern void*  GetRenderMetalCommandEncoder(Renderer* renderer);

        [LinkName("SDL_AddVulkanRenderSemaphores")]
        public static extern bool AddVulkanRenderSemaphores(Renderer* renderer, Uint32 wait_stage_mask, Sint64 wait_semaphore, Sint64 signal_semaphore);

        [LinkName("SDL_SetRenderVSync")]
        public static extern bool SetRenderVSync(Renderer* renderer, int vsync);

        [LinkName("SDL_GetRenderVSync")]
        public static extern bool GetRenderVSync(Renderer* renderer, int* vsync);

        [LinkName("SDL_RenderDebugText")]
        public static extern bool RenderDebugText(Renderer* renderer, float x, float y, const char* str);


C:\Dev\SDL3-Beef\headers\SDL_revision.h

C:\Dev\SDL3-Beef\headers\SDL_scancode.h

C:\Dev\SDL3-Beef\headers\SDL_sensor.h
        [LinkName(" SDL_GetSensors")]
        public static extern SensorID*  GetSensors(int* count);

        [LinkName("SDL_GetSensorNameForID")]
        public static extern const char*  GetSensorNameForID(SensorID instance_id);

        [LinkName(" SDL_GetSensorTypeForID")]
        public static extern SensorType GetSensorTypeForID(SensorID instance_id);

        [LinkName("SDL_GetSensorNonPortableTypeForID")]
        public static extern int GetSensorNonPortableTypeForID(SensorID instance_id);

        [LinkName(" SDL_OpenSensor")]
        public static extern Sensor*  OpenSensor(SensorID instance_id);

        [LinkName(" SDL_GetSensorFromID")]
        public static extern Sensor*  GetSensorFromID(SensorID instance_id);

        [LinkName(" SDL_GetSensorProperties")]
        public static extern PropertiesID GetSensorProperties(Sensor* sensor);

        [LinkName("SDL_GetSensorName")]
        public static extern const char*  GetSensorName(Sensor* sensor);

        [LinkName(" SDL_GetSensorType")]
        public static extern SensorType GetSensorType(Sensor* sensor);

        [LinkName("SDL_GetSensorNonPortableType")]
        public static extern int GetSensorNonPortableType(Sensor* sensor);

        [LinkName(" SDL_GetSensorID")]
        public static extern SensorID GetSensorID(Sensor* sensor);

        [LinkName("SDL_GetSensorData")]
        public static extern bool GetSensorData(Sensor* sensor, float* data, int num_values);

        [LinkName("SDL_CloseSensor")]
        public static extern void CloseSensor(Sensor* sensor);

        [LinkName("SDL_UpdateSensors")]
        public static extern void UpdateSensors();


C:\Dev\SDL3-Beef\headers\SDL_stdinc.h
        [LinkName(" SDL_malloc")]
        public static extern MALLOC void*  malloc(size_t size);

        [LinkName(" SDL_ALLOC_SIZE2")]
        public static extern MALLOC ALLOC_SIZE2(1, 2) void*  calloc(size_t nmemb, size_t size);

        [LinkName("SDL_ALLOC_SIZE")]
        public static extern ALLOC_SIZE(2) void*  realloc(void* mem, size_t size);

        [LinkName("SDL_free")]
        public static extern void free(void* mem);

        [LinkName("SDL_GetOriginalMemoryFunctions")]
        public static extern void GetOriginalMemoryFunctions(malloc_func* malloc_func,

        [LinkName("SDL_GetMemoryFunctions")]
        public static extern void GetMemoryFunctions(malloc_func* malloc_func,

        [LinkName("SDL_SetMemoryFunctions")]
        public static extern bool SetMemoryFunctions(malloc_func malloc_func,

        [LinkName(" SDL_aligned_alloc")]
        public static extern MALLOC void*  aligned_alloc(size_t alignment, size_t size);

        [LinkName("SDL_aligned_free")]
        public static extern void aligned_free(void* mem);

        [LinkName("SDL_GetNumAllocations")]
        public static extern int GetNumAllocations();

        [LinkName(" SDL_GetEnvironment")]
        public static extern Environment*  GetEnvironment();

        [LinkName(" SDL_CreateEnvironment")]
        public static extern Environment*  CreateEnvironment(bool populated);

        [LinkName("SDL_GetEnvironmentVariable")]
        public static extern const char*  GetEnvironmentVariable(Environment* env, const char* name);

        [LinkName("SDL_GetEnvironmentVariables")]
        public static extern char**  GetEnvironmentVariables(Environment* env);

        [LinkName("SDL_SetEnvironmentVariable")]
        public static extern bool SetEnvironmentVariable(Environment* env, const char* name, const char* value, bool overwrite);

        [LinkName("SDL_UnsetEnvironmentVariable")]
        public static extern bool UnsetEnvironmentVariable(Environment* env, const char* name);

        [LinkName("SDL_DestroyEnvironment")]
        public static extern void DestroyEnvironment(Environment* env);

        [LinkName("SDL_getenv")]
        public static extern const char*  getenv(const char* name);

        [LinkName("SDL_getenv_unsafe")]
        public static extern const char*  getenv_unsafe(const char* name);

        [LinkName("SDL_setenv_unsafe")]
        public static extern int setenv_unsafe(const char* name, const char* value, int overwrite);

        [LinkName("SDL_unsetenv_unsafe")]
        public static extern int unsetenv_unsafe(const char* name);

        [LinkName("SDL_qsort")]
        public static extern void qsort(void* base, size_t nmemb, size_t size, CompareCallback compare);

        [LinkName("SDL_bsearch")]
        public static extern void*  bsearch(const void* key, const void* base, size_t nmemb, size_t size, CompareCallback compare);

        [LinkName("SDL_qsort_r")]
        public static extern void qsort_r(void* base, size_t nmemb, size_t size, CompareCallback_r compare, void* userdata);

        [LinkName("SDL_bsearch_r")]
        public static extern void*  bsearch_r(const void* key, const void* base, size_t nmemb, size_t size, CompareCallback_r compare, void* userdata);

        [LinkName("SDL_abs")]
        public static extern int abs(int x);

        [LinkName("SDL_isalpha")]
        public static extern int isalpha(int x);

        [LinkName("SDL_isalnum")]
        public static extern int isalnum(int x);

        [LinkName("SDL_isblank")]
        public static extern int isblank(int x);

        [LinkName("SDL_iscntrl")]
        public static extern int iscntrl(int x);

        [LinkName("SDL_isdigit")]
        public static extern int isdigit(int x);

        [LinkName("SDL_isxdigit")]
        public static extern int isxdigit(int x);

        [LinkName("SDL_ispunct")]
        public static extern int ispunct(int x);

        [LinkName("SDL_isspace")]
        public static extern int isspace(int x);

        [LinkName("SDL_isupper")]
        public static extern int isupper(int x);

        [LinkName("SDL_islower")]
        public static extern int islower(int x);

        [LinkName("SDL_isprint")]
        public static extern int isprint(int x);

        [LinkName("SDL_isgraph")]
        public static extern int isgraph(int x);

        [LinkName("SDL_toupper")]
        public static extern int toupper(int x);

        [LinkName("SDL_tolower")]
        public static extern int tolower(int x);

        [LinkName("SDL_crc16")]
        public static extern Uint16 crc16(Uint16 crc, const void* data, size_t len);

        [LinkName("SDL_crc32")]
        public static extern Uint32 crc32(Uint32 crc, const void* data, size_t len);

        [LinkName("SDL_murmur3_32")]
        public static extern Uint32 murmur3_32(const void* data, size_t len, Uint32 seed);

        [LinkName("SDL_memcpy")]
        public static extern void*  memcpy(OUT_BYTECAP(len) void* dst, IN_BYTECAP(len) const void* src, size_t len);

        [LinkName("SDL_memmove")]
        public static extern void*  memmove(OUT_BYTECAP(len) void* dst, IN_BYTECAP(len) const void* src, size_t len);

        [LinkName("SDL_memset")]
        public static extern void*  memset(OUT_BYTECAP(len) void* dst, int c, size_t len);

        [LinkName("SDL_memset4")]
        public static extern void*  memset4(void* dst, Uint32 val, size_t dwords);

        [LinkName("SDL_memcmp")]
        public static extern int memcmp(const void* s1, const void* s2, size_t len);

        [LinkName("SDL_wcslen")]
        public static extern size_t wcslen(const wchar_t* wstr);

        [LinkName("SDL_wcsnlen")]
        public static extern size_t wcsnlen(const wchar_t* wstr, size_t maxlen);

        [LinkName("SDL_wcslcpy")]
        public static extern size_t wcslcpy(OUT_Z_CAP(maxlen) wchar_t* dst, const wchar_t* src, size_t maxlen);

        [LinkName("SDL_wcslcat")]
        public static extern size_t wcslcat(INOUT_Z_CAP(maxlen) wchar_t* dst, const wchar_t* src, size_t maxlen);

        [LinkName("SDL_wcsdup")]
        public static extern wchar_t*  wcsdup(const wchar_t* wstr);

        [LinkName("SDL_wcsstr")]
        public static extern wchar_t*  wcsstr(const wchar_t* haystack, const wchar_t* needle);

        [LinkName("SDL_wcsnstr")]
        public static extern wchar_t*  wcsnstr(const wchar_t* haystack, const wchar_t* needle, size_t maxlen);

        [LinkName("SDL_wcscmp")]
        public static extern int wcscmp(const wchar_t* str1, const wchar_t* str2);

        [LinkName("SDL_wcsncmp")]
        public static extern int wcsncmp(const wchar_t* str1, const wchar_t* str2, size_t maxlen);

        [LinkName("SDL_wcscasecmp")]
        public static extern int wcscasecmp(const wchar_t* str1, const wchar_t* str2);

        [LinkName("SDL_wcsncasecmp")]
        public static extern int wcsncasecmp(const wchar_t* str1, const wchar_t* str2, size_t maxlen);

        [LinkName("SDL_wcstol")]
        public static extern long wcstol(const wchar_t* str, wchar_t** endp, int base);

        [LinkName("SDL_strlen")]
        public static extern size_t strlen(const char* str);

        [LinkName("SDL_strnlen")]
        public static extern size_t strnlen(const char* str, size_t maxlen);

        [LinkName("SDL_strlcpy")]
        public static extern size_t strlcpy(OUT_Z_CAP(maxlen) char* dst, const char* src, size_t maxlen);

        [LinkName("SDL_utf8strlcpy")]
        public static extern size_t utf8strlcpy(OUT_Z_CAP(dst_bytes) char* dst, const char* src, size_t dst_bytes);

        [LinkName("SDL_strlcat")]
        public static extern size_t strlcat(INOUT_Z_CAP(maxlen) char* dst, const char* src, size_t maxlen);

        [LinkName(" SDL_strdup")]
        public static extern MALLOC char*  strdup(const char* str);

        [LinkName(" SDL_strndup")]
        public static extern MALLOC char*  strndup(const char* str, size_t maxlen);

        [LinkName("SDL_strrev")]
        public static extern char*  strrev(char* str);

        [LinkName("SDL_strupr")]
        public static extern char*  strupr(char* str);

        [LinkName("SDL_strlwr")]
        public static extern char*  strlwr(char* str);

        [LinkName("SDL_strchr")]
        public static extern char*  strchr(const char* str, int c);

        [LinkName("SDL_strrchr")]
        public static extern char*  strrchr(const char* str, int c);

        [LinkName("SDL_strstr")]
        public static extern char*  strstr(const char* haystack, const char* needle);

        [LinkName("SDL_strnstr")]
        public static extern char*  strnstr(const char* haystack, const char* needle, size_t maxlen);

        [LinkName("SDL_strcasestr")]
        public static extern char*  strcasestr(const char* haystack, const char* needle);

        [LinkName("SDL_strtok_r")]
        public static extern char*  strtok_r(char* s1, const char* s2, char** saveptr);

        [LinkName("SDL_utf8strlen")]
        public static extern size_t utf8strlen(const char* str);

        [LinkName("SDL_utf8strnlen")]
        public static extern size_t utf8strnlen(const char* str, size_t bytes);

        [LinkName("SDL_itoa")]
        public static extern char*  itoa(int value, char* str, int radix);

        [LinkName("SDL_uitoa")]
        public static extern char*  uitoa(unsigned int value, char* str, int radix);

        [LinkName("SDL_ltoa")]
        public static extern char*  ltoa(long value, char* str, int radix);

        [LinkName("SDL_ultoa")]
        public static extern char*  ultoa(unsigned long value, char* str, int radix);

        [LinkName("SDL_lltoa")]
        public static extern char*  lltoa(long long value, char* str, int radix);

        [LinkName("SDL_ulltoa")]
        public static extern char*  ulltoa(unsigned long long value, char* str, int radix);

        [LinkName("SDL_atoi")]
        public static extern int atoi(const char* str);

        [LinkName("SDL_atof")]
        public static extern double atof(const char* str);

        [LinkName("SDL_strtol")]
        public static extern long strtol(const char* str, char** endp, int base);

        [LinkName("SDL_strtoul")]
        public static extern unsigned long strtoul(const char* str, char** endp, int base);

        [LinkName("SDL_strtoll")]
        public static extern long long strtoll(const char* str, char** endp, int base);

        [LinkName("SDL_strtoull")]
        public static extern unsigned long long strtoull(const char* str, char** endp, int base);

        [LinkName("SDL_strtod")]
        public static extern double strtod(const char* str, char** endp);

        [LinkName("SDL_strcmp")]
        public static extern int strcmp(const char* str1, const char* str2);

        [LinkName("SDL_strncmp")]
        public static extern int strncmp(const char* str1, const char* str2, size_t maxlen);

        [LinkName("SDL_strcasecmp")]
        public static extern int strcasecmp(const char* str1, const char* str2);

        [LinkName("SDL_strncasecmp")]
        public static extern int strncasecmp(const char* str1, const char* str2, size_t maxlen);

        [LinkName("SDL_strpbrk")]
        public static extern char*  strpbrk(const char* str, const char* breakset);

        [LinkName("SDL_StepUTF8")]
        public static extern Uint32 StepUTF8(const char** pstr, size_t* pslen);

        [LinkName("SDL_StepBackUTF8")]
        public static extern Uint32 StepBackUTF8(const char* start, const char** pstr);

        [LinkName("SDL_UCS4ToUTF8")]
        public static extern char*  UCS4ToUTF8(Uint32 codepoint, char* dst);

        [LinkName("SDL_sscanf")]
        public static extern int sscanf(const char* text, SCANF_FORMAT_STRING const char* fmt, ...) SCANF_VARARG_FUNC(2);

        [LinkName("SDL_vsscanf")]
        public static extern int vsscanf(const char* text, SCANF_FORMAT_STRING const char* fmt, va_list ap) SCANF_VARARG_FUNCV(2);

        [LinkName("SDL_snprintf")]
        public static extern int snprintf(OUT_Z_CAP(maxlen) char* text, size_t maxlen, PRINTF_FORMAT_STRING const char* fmt, ...) PRINTF_VARARG_FUNC(3);

        [LinkName("SDL_swprintf")]
        public static extern int swprintf(OUT_Z_CAP(maxlen) wchar_t* text, size_t maxlen, PRINTF_FORMAT_STRING const wchar_t* fmt, ...) WPRINTF_VARARG_FUNC(3);

        [LinkName("SDL_vsnprintf")]
        public static extern int vsnprintf(OUT_Z_CAP(maxlen) char* text, size_t maxlen, PRINTF_FORMAT_STRING const char* fmt, va_list ap) PRINTF_VARARG_FUNCV(3);

        [LinkName("SDL_vswprintf")]
        public static extern int vswprintf(OUT_Z_CAP(maxlen) wchar_t* text, size_t maxlen, PRINTF_FORMAT_STRING const wchar_t* fmt, va_list ap) WPRINTF_VARARG_FUNCV(3);

        [LinkName("SDL_asprintf")]
        public static extern int asprintf(char** strp, PRINTF_FORMAT_STRING const char* fmt, ...) PRINTF_VARARG_FUNC(2);

        [LinkName("SDL_vasprintf")]
        public static extern int vasprintf(char** strp, PRINTF_FORMAT_STRING const char* fmt, va_list ap) PRINTF_VARARG_FUNCV(2);

        [LinkName("SDL_srand")]
        public static extern void srand(Uint64 seed);

        [LinkName("SDL_rand")]
        public static extern Sint32 rand(Sint32 n);

        [LinkName("SDL_randf")]
        public static extern float randf();

        [LinkName("SDL_rand_bits")]
        public static extern Uint32 rand_bits();

        [LinkName("SDL_rand_r")]
        public static extern Sint32 rand_r(Uint64* state, Sint32 n);

        [LinkName("SDL_randf_r")]
        public static extern float randf_r(Uint64* state);

        [LinkName("SDL_rand_bits_r")]
        public static extern Uint32 rand_bits_r(Uint64* state);

        [LinkName("SDL_acos")]
        public static extern double acos(double x);

        [LinkName("SDL_acosf")]
        public static extern float acosf(float x);

        [LinkName("SDL_asin")]
        public static extern double asin(double x);

        [LinkName("SDL_asinf")]
        public static extern float asinf(float x);

        [LinkName("SDL_atan")]
        public static extern double atan(double x);

        [LinkName("SDL_atanf")]
        public static extern float atanf(float x);

        [LinkName("SDL_atan2")]
        public static extern double atan2(double y, double x);

        [LinkName("SDL_atan2f")]
        public static extern float atan2f(float y, float x);

        [LinkName("SDL_ceil")]
        public static extern double ceil(double x);

        [LinkName("SDL_ceilf")]
        public static extern float ceilf(float x);

        [LinkName("SDL_copysign")]
        public static extern double copysign(double x, double y);

        [LinkName("SDL_copysignf")]
        public static extern float copysignf(float x, float y);

        [LinkName("SDL_cos")]
        public static extern double cos(double x);

        [LinkName("SDL_cosf")]
        public static extern float cosf(float x);

        [LinkName("SDL_exp")]
        public static extern double exp(double x);

        [LinkName("SDL_expf")]
        public static extern float expf(float x);

        [LinkName("SDL_fabs")]
        public static extern double fabs(double x);

        [LinkName("SDL_fabsf")]
        public static extern float fabsf(float x);

        [LinkName("SDL_floor")]
        public static extern double floor(double x);

        [LinkName("SDL_floorf")]
        public static extern float floorf(float x);

        [LinkName("SDL_trunc")]
        public static extern double trunc(double x);

        [LinkName("SDL_truncf")]
        public static extern float truncf(float x);

        [LinkName("SDL_fmod")]
        public static extern double fmod(double x, double y);

        [LinkName("SDL_fmodf")]
        public static extern float fmodf(float x, float y);

        [LinkName("SDL_isinf")]
        public static extern int isinf(double x);

        [LinkName("SDL_isinff")]
        public static extern int isinff(float x);

        [LinkName("SDL_isnan")]
        public static extern int isnan(double x);

        [LinkName("SDL_isnanf")]
        public static extern int isnanf(float x);

        [LinkName("SDL_log")]
        public static extern double log(double x);

        [LinkName("SDL_logf")]
        public static extern float logf(float x);

        [LinkName("SDL_log10")]
        public static extern double log10(double x);

        [LinkName("SDL_log10f")]
        public static extern float log10f(float x);

        [LinkName("SDL_modf")]
        public static extern double modf(double x, double* y);

        [LinkName("SDL_modff")]
        public static extern float modff(float x, float* y);

        [LinkName("SDL_pow")]
        public static extern double pow(double x, double y);

        [LinkName("SDL_powf")]
        public static extern float powf(float x, float y);

        [LinkName("SDL_round")]
        public static extern double round(double x);

        [LinkName("SDL_roundf")]
        public static extern float roundf(float x);

        [LinkName("SDL_lround")]
        public static extern long lround(double x);

        [LinkName("SDL_lroundf")]
        public static extern long lroundf(float x);

        [LinkName("SDL_scalbn")]
        public static extern double scalbn(double x, int n);

        [LinkName("SDL_scalbnf")]
        public static extern float scalbnf(float x, int n);

        [LinkName("SDL_sin")]
        public static extern double sin(double x);

        [LinkName("SDL_sinf")]
        public static extern float sinf(float x);

        [LinkName("SDL_sqrt")]
        public static extern double sqrt(double x);

        [LinkName("SDL_sqrtf")]
        public static extern float sqrtf(float x);

        [LinkName("SDL_tan")]
        public static extern double tan(double x);

        [LinkName("SDL_tanf")]
        public static extern float tanf(float x);

        [LinkName(" SDL_iconv_open")]
        public static extern iconv_t iconv_open(const char* tocode,

        [LinkName("SDL_iconv_close")]
        public static extern int iconv_close(iconv_t cd);

        [LinkName("SDL_iconv")]
        public static extern size_t iconv(iconv_t cd, const char** inbuf,

        [LinkName("SDL_iconv_string")]
        public static extern char*  iconv_string(const char* tocode,


C:\Dev\SDL3-Beef\headers\SDL_storage.h
        [LinkName(" SDL_OpenTitleStorage")]
        public static extern Storage*  OpenTitleStorage(const char* override, PropertiesID props);

        [LinkName(" SDL_OpenUserStorage")]
        public static extern Storage*  OpenUserStorage(const char* org, const char* app, PropertiesID props);

        [LinkName(" SDL_OpenFileStorage")]
        public static extern Storage*  OpenFileStorage(const char* path);

        [LinkName(" SDL_OpenStorage")]
        public static extern Storage*  OpenStorage(const StorageInterface* iface, void* userdata);

        [LinkName("SDL_CloseStorage")]
        public static extern bool CloseStorage(Storage* storage);

        [LinkName("SDL_StorageReady")]
        public static extern bool StorageReady(Storage* storage);

        [LinkName("SDL_GetStorageFileSize")]
        public static extern bool GetStorageFileSize(Storage* storage, const char* path, Uint64* length);

        [LinkName("SDL_ReadStorageFile")]
        public static extern bool ReadStorageFile(Storage* storage, const char* path, void* destination, Uint64 length);

        [LinkName("SDL_WriteStorageFile")]
        public static extern bool WriteStorageFile(Storage* storage, const char* path, const void* source, Uint64 length);

        [LinkName("SDL_CreateStorageDirectory")]
        public static extern bool CreateStorageDirectory(Storage* storage, const char* path);

        [LinkName("SDL_EnumerateStorageDirectory")]
        public static extern bool EnumerateStorageDirectory(Storage* storage, const char* path, EnumerateDirectoryCallback callback, void* userdata);

        [LinkName("SDL_RemoveStoragePath")]
        public static extern bool RemoveStoragePath(Storage* storage, const char* path);

        [LinkName("SDL_RenameStoragePath")]
        public static extern bool RenameStoragePath(Storage* storage, const char* oldpath, const char* newpath);

        [LinkName("SDL_CopyStorageFile")]
        public static extern bool CopyStorageFile(Storage* storage, const char* oldpath, const char* newpath);

        [LinkName("SDL_GetStoragePathInfo")]
        public static extern bool GetStoragePathInfo(Storage* storage, const char* path, PathInfo* info);

        [LinkName("SDL_GetStorageSpaceRemaining")]
        public static extern Uint64 GetStorageSpaceRemaining(Storage* storage);

        [LinkName("SDL_GlobStorageDirectory")]
        public static extern char**  GlobStorageDirectory(Storage* storage, const char* path, const char* pattern, GlobFlags flags, int* count);


C:\Dev\SDL3-Beef\headers\SDL_surface.h
        [LinkName(" SDL_CreateSurface")]
        public static extern Surface*  CreateSurface(int width, int height, PixelFormat format);

        [LinkName(" SDL_CreateSurfaceFrom")]
        public static extern Surface*  CreateSurfaceFrom(int width, int height, PixelFormat format, void* pixels, int pitch);

        [LinkName("SDL_DestroySurface")]
        public static extern void DestroySurface(Surface* surface);

        [LinkName(" SDL_GetSurfaceProperties")]
        public static extern PropertiesID GetSurfaceProperties(Surface* surface);

        [LinkName("SDL_SetSurfaceColorspace")]
        public static extern bool SetSurfaceColorspace(Surface* surface, Colorspace colorspace);

        [LinkName(" SDL_GetSurfaceColorspace")]
        public static extern Colorspace GetSurfaceColorspace(Surface* surface);

        [LinkName(" SDL_CreateSurfacePalette")]
        public static extern Palette*  CreateSurfacePalette(Surface* surface);

        [LinkName("SDL_SetSurfacePalette")]
        public static extern bool SetSurfacePalette(Surface* surface, Palette* palette);

        [LinkName(" SDL_GetSurfacePalette")]
        public static extern Palette*  GetSurfacePalette(Surface* surface);

        [LinkName("SDL_AddSurfaceAlternateImage")]
        public static extern bool AddSurfaceAlternateImage(Surface* surface, Surface* image);

        [LinkName("SDL_SurfaceHasAlternateImages")]
        public static extern bool SurfaceHasAlternateImages(Surface* surface);

        [LinkName(" SDL_GetSurfaceImages")]
        public static extern Surface**  GetSurfaceImages(Surface* surface, int* count);

        [LinkName("SDL_RemoveSurfaceAlternateImages")]
        public static extern void RemoveSurfaceAlternateImages(Surface* surface);

        [LinkName("SDL_LockSurface")]
        public static extern bool LockSurface(Surface* surface);

        [LinkName("SDL_UnlockSurface")]
        public static extern void UnlockSurface(Surface* surface);

        [LinkName(" SDL_LoadBMP_IO")]
        public static extern Surface*  LoadBMP_IO(IOStream* src, bool closeio);

        [LinkName(" SDL_LoadBMP")]
        public static extern Surface*  LoadBMP(const char* file);

        [LinkName("SDL_SaveBMP_IO")]
        public static extern bool SaveBMP_IO(Surface* surface, IOStream* dst, bool closeio);

        [LinkName("SDL_SaveBMP")]
        public static extern bool SaveBMP(Surface* surface, const char* file);

        [LinkName("SDL_SetSurfaceRLE")]
        public static extern bool SetSurfaceRLE(Surface* surface, bool enabled);

        [LinkName("SDL_SurfaceHasRLE")]
        public static extern bool SurfaceHasRLE(Surface* surface);

        [LinkName("SDL_SetSurfaceColorKey")]
        public static extern bool SetSurfaceColorKey(Surface* surface, bool enabled, Uint32 key);

        [LinkName("SDL_SurfaceHasColorKey")]
        public static extern bool SurfaceHasColorKey(Surface* surface);

        [LinkName("SDL_GetSurfaceColorKey")]
        public static extern bool GetSurfaceColorKey(Surface* surface, Uint32* key);

        [LinkName("SDL_SetSurfaceColorMod")]
        public static extern bool SetSurfaceColorMod(Surface* surface, Uint8 r, Uint8 g, Uint8 b);

        [LinkName("SDL_GetSurfaceColorMod")]
        public static extern bool GetSurfaceColorMod(Surface* surface, Uint8* r, Uint8* g, Uint8* b);

        [LinkName("SDL_SetSurfaceAlphaMod")]
        public static extern bool SetSurfaceAlphaMod(Surface* surface, Uint8 alpha);

        [LinkName("SDL_GetSurfaceAlphaMod")]
        public static extern bool GetSurfaceAlphaMod(Surface* surface, Uint8* alpha);

        [LinkName("SDL_SetSurfaceBlendMode")]
        public static extern bool SetSurfaceBlendMode(Surface* surface, BlendMode blendMode);

        [LinkName("SDL_GetSurfaceBlendMode")]
        public static extern bool GetSurfaceBlendMode(Surface* surface, BlendMode* blendMode);

        [LinkName("SDL_SetSurfaceClipRect")]
        public static extern bool SetSurfaceClipRect(Surface* surface, const Rect* rect);

        [LinkName("SDL_GetSurfaceClipRect")]
        public static extern bool GetSurfaceClipRect(Surface* surface, Rect* rect);

        [LinkName("SDL_FlipSurface")]
        public static extern bool FlipSurface(Surface* surface, FlipMode flip);

        [LinkName(" SDL_DuplicateSurface")]
        public static extern Surface*  DuplicateSurface(Surface* surface);

        [LinkName(" SDL_ScaleSurface")]
        public static extern Surface*  ScaleSurface(Surface* surface, int width, int height, ScaleMode scaleMode);

        [LinkName(" SDL_ConvertSurface")]
        public static extern Surface*  ConvertSurface(Surface* surface, PixelFormat format);

        [LinkName(" SDL_ConvertSurfaceAndColorspace")]
        public static extern Surface*  ConvertSurfaceAndColorspace(Surface* surface, PixelFormat format, Palette* palette, Colorspace colorspace, PropertiesID props);

        [LinkName("SDL_ConvertPixels")]
        public static extern bool ConvertPixels(int width, int height, PixelFormat src_format, const void* src, int src_pitch, PixelFormat dst_format, void* dst, int dst_pitch);

        [LinkName("SDL_ConvertPixelsAndColorspace")]
        public static extern bool ConvertPixelsAndColorspace(int width, int height, PixelFormat src_format, Colorspace src_colorspace, PropertiesID src_properties, const void* src, int src_pitch, PixelFormat dst_format, Colorspace dst_colorspace, PropertiesID dst_properties, void* dst, int dst_pitch);

        [LinkName("SDL_PremultiplyAlpha")]
        public static extern bool PremultiplyAlpha(int width, int height, PixelFormat src_format, const void* src, int src_pitch, PixelFormat dst_format, void* dst, int dst_pitch, bool linear);

        [LinkName("SDL_PremultiplySurfaceAlpha")]
        public static extern bool PremultiplySurfaceAlpha(Surface* surface, bool linear);

        [LinkName("SDL_ClearSurface")]
        public static extern bool ClearSurface(Surface* surface, float r, float g, float b, float a);

        [LinkName("SDL_FillSurfaceRect")]
        public static extern bool FillSurfaceRect(Surface* dst, const Rect* rect, Uint32 color);

        [LinkName("SDL_FillSurfaceRects")]
        public static extern bool FillSurfaceRects(Surface* dst, const Rect* rects, int count, Uint32 color);

        [LinkName("SDL_BlitSurface")]
        public static extern bool BlitSurface(Surface* src, const Rect* srcrect, Surface* dst, const Rect* dstrect);

        [LinkName("SDL_BlitSurfaceUnchecked")]
        public static extern bool BlitSurfaceUnchecked(Surface* src, const Rect* srcrect, Surface* dst, const Rect* dstrect);

        [LinkName("SDL_BlitSurfaceScaled")]
        public static extern bool BlitSurfaceScaled(Surface* src, const Rect* srcrect, Surface* dst, const Rect* dstrect, ScaleMode scaleMode);

        [LinkName("SDL_BlitSurfaceUncheckedScaled")]
        public static extern bool BlitSurfaceUncheckedScaled(Surface* src, const Rect* srcrect, Surface* dst, const Rect* dstrect, ScaleMode scaleMode);

        [LinkName("SDL_BlitSurfaceTiled")]
        public static extern bool BlitSurfaceTiled(Surface* src, const Rect* srcrect, Surface* dst, const Rect* dstrect);

        [LinkName("SDL_BlitSurfaceTiledWithScale")]
        public static extern bool BlitSurfaceTiledWithScale(Surface* src, const Rect* srcrect, float scale, ScaleMode scaleMode, Surface* dst, const Rect* dstrect);

        [LinkName("SDL_BlitSurface9Grid")]
        public static extern bool BlitSurface9Grid(Surface* src, const Rect* srcrect, int left_width, int right_width, int top_height, int bottom_height, float scale, ScaleMode scaleMode, Surface* dst, const Rect* dstrect);

        [LinkName("SDL_MapSurfaceRGB")]
        public static extern Uint32 MapSurfaceRGB(Surface* surface, Uint8 r, Uint8 g, Uint8 b);

        [LinkName("SDL_MapSurfaceRGBA")]
        public static extern Uint32 MapSurfaceRGBA(Surface* surface, Uint8 r, Uint8 g, Uint8 b, Uint8 a);

        [LinkName("SDL_ReadSurfacePixel")]
        public static extern bool ReadSurfacePixel(Surface* surface, int x, int y, Uint8* r, Uint8* g, Uint8* b, Uint8* a);

        [LinkName("SDL_ReadSurfacePixelFloat")]
        public static extern bool ReadSurfacePixelFloat(Surface* surface, int x, int y, float* r, float* g, float* b, float* a);

        [LinkName("SDL_WriteSurfacePixel")]
        public static extern bool WriteSurfacePixel(Surface* surface, int x, int y, Uint8 r, Uint8 g, Uint8 b, Uint8 a);

        [LinkName("SDL_WriteSurfacePixelFloat")]
        public static extern bool WriteSurfacePixelFloat(Surface* surface, int x, int y, float r, float g, float b, float a);


C:\Dev\SDL3-Beef\headers\SDL_system.h
        [LinkName("SDL_SetWindowsMessageHook")]
        public static extern void SetWindowsMessageHook(WindowsMessageHook callback, void* userdata);

        [LinkName("SDL_GetDirect3D9AdapterIndex")]
        public static extern int GetDirect3D9AdapterIndex(DisplayID displayID);

        [LinkName("SDL_GetDXGIOutputInfo")]
        public static extern bool GetDXGIOutputInfo(DisplayID displayID, int* adapterIndex, int* outputIndex);

        [LinkName("SDL_SetX11EventHook")]
        public static extern void SetX11EventHook(X11EventHook callback, void* userdata);

        [LinkName("SDL_SetLinuxThreadPriority")]
        public static extern bool SetLinuxThreadPriority(Sint64 threadID, int priority);

        [LinkName("SDL_SetLinuxThreadPriorityAndPolicy")]
        public static extern bool SetLinuxThreadPriorityAndPolicy(Sint64 threadID, int sdlPriority, int schedPolicy);

        [LinkName("SDL_SetiOSAnimationCallback")]
        public static extern bool SetiOSAnimationCallback(Window* window, int interval, iOSAnimationCallback callback, void* callbackParam);

        [LinkName("SDL_SetiOSEventPump")]
        public static extern void SetiOSEventPump(bool enabled);

        [LinkName("SDL_GetAndroidJNIEnv")]
        public static extern void*  GetAndroidJNIEnv();

        [LinkName("SDL_GetAndroidActivity")]
        public static extern void*  GetAndroidActivity();

        [LinkName("SDL_GetAndroidSDKVersion")]
        public static extern int GetAndroidSDKVersion();

        [LinkName("SDL_IsChromebook")]
        public static extern bool IsChromebook();

        [LinkName("SDL_IsDeXMode")]
        public static extern bool IsDeXMode();

        [LinkName("SDL_SendAndroidBackButton")]
        public static extern void SendAndroidBackButton();

        [LinkName("SDL_GetAndroidInternalStoragePath")]
        public static extern const char*  GetAndroidInternalStoragePath();

        [LinkName("SDL_GetAndroidExternalStorageState")]
        public static extern Uint32 GetAndroidExternalStorageState();

        [LinkName("SDL_GetAndroidExternalStoragePath")]
        public static extern const char*  GetAndroidExternalStoragePath();

        [LinkName("SDL_GetAndroidCachePath")]
        public static extern const char*  GetAndroidCachePath();

        [LinkName("SDL_RequestAndroidPermission")]
        public static extern bool RequestAndroidPermission(const char* permission, RequestAndroidPermissionCallback cb, void* userdata);

        [LinkName("SDL_ShowAndroidToast")]
        public static extern bool ShowAndroidToast(const char* message, int duration, int gravity, int xoffset, int yoffset);

        [LinkName("SDL_SendAndroidMessage")]
        public static extern bool SendAndroidMessage(Uint32 command, int param);

        [LinkName("SDL_IsTablet")]
        public static extern bool IsTablet();

        [LinkName("SDL_IsTV")]
        public static extern bool IsTV();

        [LinkName(" SDL_GetSandbox")]
        public static extern Sandbox GetSandbox();

        [LinkName("SDL_OnApplicationWillTerminate")]
        public static extern void OnApplicationWillTerminate();

        [LinkName("SDL_OnApplicationDidReceiveMemoryWarning")]
        public static extern void OnApplicationDidReceiveMemoryWarning();

        [LinkName("SDL_OnApplicationWillEnterBackground")]
        public static extern void OnApplicationWillEnterBackground();

        [LinkName("SDL_OnApplicationDidEnterBackground")]
        public static extern void OnApplicationDidEnterBackground();

        [LinkName("SDL_OnApplicationWillEnterForeground")]
        public static extern void OnApplicationWillEnterForeground();

        [LinkName("SDL_OnApplicationDidEnterForeground")]
        public static extern void OnApplicationDidEnterForeground();

        [LinkName("SDL_OnApplicationDidChangeStatusBarOrientation")]
        public static extern void OnApplicationDidChangeStatusBarOrientation();

        [LinkName("SDL_GetGDKTaskQueue")]
        public static extern bool GetGDKTaskQueue(XTaskQueueHandle* outTaskQueue);

        [LinkName("SDL_GetGDKDefaultUser")]
        public static extern bool GetGDKDefaultUser(XUserHandle* outUserHandle);


C:\Dev\SDL3-Beef\headers\SDL_thread.h
        [LinkName(" SDL_CreateThread")]
        public static extern Thread*  CreateThread(ThreadFunction fn, const char* name, void* data);

        [LinkName(" SDL_CreateThreadWithProperties")]
        public static extern Thread*  CreateThreadWithProperties(PropertiesID props);

        [LinkName(" SDL_CreateThreadRuntime")]
        public static extern Thread*  CreateThreadRuntime(ThreadFunction fn, const char* name, void* data, FunctionPointer pfnBeginThread, FunctionPointer pfnEndThread);

        [LinkName(" SDL_CreateThreadWithPropertiesRuntime")]
        public static extern Thread*  CreateThreadWithPropertiesRuntime(PropertiesID props, FunctionPointer pfnBeginThread, FunctionPointer pfnEndThread);

        [LinkName("SDL_GetThreadName")]
        public static extern const char*  GetThreadName(Thread* thread);

        [LinkName(" SDL_GetCurrentThreadID")]
        public static extern ThreadID GetCurrentThreadID();

        [LinkName(" SDL_GetThreadID")]
        public static extern ThreadID GetThreadID(Thread* thread);

        [LinkName("SDL_SetCurrentThreadPriority")]
        public static extern bool SetCurrentThreadPriority(ThreadPriority priority);

        [LinkName("SDL_WaitThread")]
        public static extern void WaitThread(Thread* thread, int* status);

        [LinkName("SDL_DetachThread")]
        public static extern void DetachThread(Thread* thread);

        [LinkName("SDL_GetTLS")]
        public static extern void*  GetTLS(TLSID* id);

        [LinkName("SDL_SetTLS")]
        public static extern bool SetTLS(TLSID* id, const void* value, TLSDestructorCallback destructor);

        [LinkName("SDL_CleanupTLS")]
        public static extern void CleanupTLS();


C:\Dev\SDL3-Beef\headers\SDL_time.h
        [LinkName("SDL_GetDateTimeLocalePreferences")]
        public static extern bool GetDateTimeLocalePreferences(DateFormat* dateFormat, TimeFormat* timeFormat);

        [LinkName("SDL_GetCurrentTime")]
        public static extern bool GetCurrentTime(Time* ticks);

        [LinkName("SDL_TimeToDateTime")]
        public static extern bool TimeToDateTime(Time ticks, DateTime* dt, bool localTime);

        [LinkName("SDL_DateTimeToTime")]
        public static extern bool DateTimeToTime(const DateTime* dt, Time* ticks);

        [LinkName("SDL_TimeToWindows")]
        public static extern void TimeToWindows(Time ticks, Uint32* dwLowDateTime, Uint32* dwHighDateTime);

        [LinkName(" SDL_TimeFromWindows")]
        public static extern Time TimeFromWindows(Uint32 dwLowDateTime, Uint32 dwHighDateTime);

        [LinkName("SDL_GetDaysInMonth")]
        public static extern int GetDaysInMonth(int year, int month);

        [LinkName("SDL_GetDayOfYear")]
        public static extern int GetDayOfYear(int year, int month, int day);

        [LinkName("SDL_GetDayOfWeek")]
        public static extern int GetDayOfWeek(int year, int month, int day);


C:\Dev\SDL3-Beef\headers\SDL_timer.h
        [LinkName("SDL_GetTicks")]
        public static extern Uint64 GetTicks();

        [LinkName("SDL_GetTicksNS")]
        public static extern Uint64 GetTicksNS();

        [LinkName("SDL_GetPerformanceCounter")]
        public static extern Uint64 GetPerformanceCounter();

        [LinkName("SDL_GetPerformanceFrequency")]
        public static extern Uint64 GetPerformanceFrequency();

        [LinkName("SDL_Delay")]
        public static extern void Delay(Uint32 ms);

        [LinkName("SDL_DelayNS")]
        public static extern void DelayNS(Uint64 ns);

        [LinkName("SDL_DelayPrecise")]
        public static extern void DelayPrecise(Uint64 ns);

        [LinkName(" SDL_AddTimer")]
        public static extern TimerID AddTimer(Uint32 interval, TimerCallback callback, void* userdata);

        [LinkName(" SDL_AddTimerNS")]
        public static extern TimerID AddTimerNS(Uint64 interval, NSTimerCallback callback, void* userdata);

        [LinkName("SDL_RemoveTimer")]
        public static extern bool RemoveTimer(TimerID id);


C:\Dev\SDL3-Beef\headers\SDL_touch.h
        [LinkName(" SDL_GetTouchDevices")]
        public static extern TouchID*  GetTouchDevices(int* count);

        [LinkName("SDL_GetTouchDeviceName")]
        public static extern const char*  GetTouchDeviceName(TouchID touchID);

        [LinkName(" SDL_GetTouchDeviceType")]
        public static extern TouchDeviceType GetTouchDeviceType(TouchID touchID);

        [LinkName(" SDL_GetTouchFingers")]
        public static extern Finger**  GetTouchFingers(TouchID touchID, int* count);

C:\Dev\SDL3-Beef\headers\SDL_vulkan.h
        [LinkName("SDL_Vulkan_LoadLibrary")]
        public static extern bool Vulkan_LoadLibrary(const char* path);

        [LinkName(" SDL_Vulkan_GetVkGetInstanceProcAddr")]
        public static extern FunctionPointer Vulkan_GetVkGetInstanceProcAddr();

        [LinkName("SDL_Vulkan_UnloadLibrary")]
        public static extern void Vulkan_UnloadLibrary();

        [LinkName("SDL_Vulkan_GetInstanceExtensions")]
        public static extern char const*  const*  Vulkan_GetInstanceExtensions(Uint32* count);

        [LinkName("SDL_Vulkan_CreateSurface")]
        public static extern bool Vulkan_CreateSurface(Window* window,

        [LinkName("SDL_Vulkan_DestroySurface")]
        public static extern void Vulkan_DestroySurface(VkInstance instance,

        [LinkName("SDL_Vulkan_GetPresentationSupport")]
        public static extern bool Vulkan_GetPresentationSupport(VkInstance instance,

*/