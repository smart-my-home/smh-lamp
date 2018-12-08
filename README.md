# esp8266/Homekit/Light
## Default pameters:
1. Wi-Fi:
    * SSID: ` mywifi `
    * PASSWORD: ` mypassword `
  * You can change it by changing the ` wifi.h ` file.  
2. GPIO:
* default pin is: ` 2 ` also known as ` D4 `
  * You can change it in ` led/led.c `, by changing the 
    * `const int led_gpio = YOUR_PIN `
## Compiling
1. This all compiles over docker. ` Dockerfile `
2. After build it runs the webserver at 8888 port.
3. You can download binaries from ` led/ `

## License
MIT License

Copyright (c) 2017 Maxim Kulkin
Copyright (c) 2018 Misha Marinenko

See License at ` LICENSE ` file.