<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

An experimental in creating a functional SONOS flash storage on Skywater 130nm process.

## How to test

To program the flash (set the data to 0), pulse `prog_en` high for about 10 miliseconds. To erase the flash (set the data to 1), pulse `erase_en` high for about 15 miliseconds. In both cases, you'd need to provide a ~2 MHz clock to the `clk` input.

Note: the pulse width and clock frequency above are just rough estimates. More accurate values will be determined in the future, once we get the silicon back.

## External hardware

None
