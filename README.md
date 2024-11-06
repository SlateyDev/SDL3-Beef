# SDL3-Beef

![grafik](https://github.com/user-attachments/assets/1631c909-4b51-49b8-92d2-e0aa6414bb25)

This project provides a binding for the SDL3 library to the Beef programming language.  
It provides one primary binding that aims to be as close as possible to the original library in the `SDL3.Raw` namespace,
while potentially also providing a more structured interface in the future.

## Interface

### Raw
- Symbols are static global in the `SDL3.Raw` Namespace
- Since C doesnt do variably sized enums the syntax that SDL uses to emulate them is translated into an actual enum
- Not all defines are included if they dont show up in the documentation
- Documentation is copied for some of the structs and enums as those where taken directly from the source. Functions dont have their documentation included
- `SDL_Scancode_To_Keycode` has been turned into a function since the macro doesnt work in Beef
- Few system specific functions have been commented out and marked with `TODO` as those take parameters that are platform dependent and not included in SDL3 itself
- Some Vulkan structs are also available to bind the vulkan header correctly
 
## License
This binding is licensed under the mit license, while SDL3 itself is licensed under the zlib license
