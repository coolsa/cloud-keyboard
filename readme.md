# Yet another preonic clone

This keyboard is designed using the excellent [*hotswappable keyboard generator*](https://github.com/50an6xy06r6n/hotswap_pcb_generator), the [*KeyV2* key cap generator](https://github.com/rsheldiii/KeyV2), and the [*QMK* firmware](https://github.com/qmk/qmk_firmware)

If I get far enough, this may come to use the [*ZMK* firmware](https://github.com/zmkfirmware/zmk) for bluetooth support, using the NRF52 chip and a custom PCB, but thats for a seperate future project.

In hindsight, this layout is basically the same as the Nyquist keyboard.

I've also taken from the Planck steno example to make a custom layer.

## Why are you doing this?

I really want to build my own keyboard again, but this time have a better design. I have previously hand-soldered a keyboard, but it turned out as an overall disaster. The keyboard, a planck clone, was marred by bad soldering jobs, poor printer tollerances, and generally aweful colour choices.

This time, I come with more experience in both software *and* hardware, and the research I have done previously on the topic of keyboard design. Also, the preonic has more keys, a whole extra row, so thats more potential for activities there!

As a secondary goal, I also hope to gain experience in the realm of Stenography, using the [*wonderful software Plover*](https://github.com/openstenoproject/plover). With skills in that, I could potentially improve my typing skills beyond an average of 100 words per minute, and finally write that gosh darn book, am I right??????

## Build Log

The process to making the keyboard began with altering the hotswappable keyboard generator to work with the components I already had. These were mainly the TRS type socket I had, and the pro-micro knockoff I had. I had to come back to this step a few times, as the pro-micro clone I had was actually using a 8 MHz clock, compared to the 16MHz that is required for a usb device. This required an additional measuring step, and a total reprint of the 3d printed circuit boards.

![The isolated switch bases in brown, diodes, and jack mounts in gold.](./images/testingDiodes.jpg)

![Two pro micro clones, and their mounts.](./images/testingLogicSize.jpg)

![An increasing quantity of test keycaps.](./images/testingKeycaps.jpg)


After these were solidified, it was a matter of creating the design in [keyboard layout editor](keyboard-layout-editor.com), and then using the hotswappable keyboard generator's node script to generate the basic layout. After manual configuration of this layout to optimize the shape for my components and creating the desired shape of the case, I was able to begin printing. A few attempts were needed.

![Image of the two several PCB's that were 3d printed.](./images/testingBoards.jpg)

Once the circuit board was printed, it was time to begin the tedious task of bending putting together the electrical side of the keyboard. I bent the sixty diodes in the extra-contact method with the template for help.

![The initial diode bend.](./images/diodeBending1.jpg)
![Using the 3d printed template, the diode was bent further.](./images/diodeBending2.jpg)
![The last step for diode bending with the template.](./images/diodeBending3.jpg)
![The finished diode, bent and ready to use.](./images/diodeBending4.jpg)

After the diodes were bent, I gathered my tools, and used some cheap 24 gauge wire in the channels. I stabbed it full of holes for connections, and then did the same on the other side. I also put in the diodes to hold in place some of the wires and tested it all out.

![Tweezers, a knife, two wire strippers, and a pair of edge cutters.](./images/tools.jpg)
![Running wires through the channels.](./images/wiring1.jpg)
![Diodes in place, the blue back plane wires are visible, several switches are in place for testing.](./images/wiring2.jpg)
![The completed wiring, holes are visible on the front plane, and wires are connected to the pro micro.](./images/wiring3.jpg)

With the boards wired, programmed, tested, and confirmed working, I gathered my tools and put everything into their case, finalizing the boards.

![A back view of the pcb, mounted into the shell of the keyboard.](./images/assembly1.jpg)
![A partially assembled keyboard, not all switches are in place.](./images/assembly2.jpg)
![The completed keyboard, with a marble and gold colour scheme.](./images/finalProduct.jpg)

After all that, I had to do it a second time, as the pro micro clones I was initially using were locked to 8MHz, when 16MHz was required for using the usb protocol. I also added a reset switch, which is connected to black wires in some of the images.

After this was done, there were some additional times that I disassembled the board to reprogram things, but after figuring out boot-magic, there were no further disassemblies required.

# Whats the TODO?

- [x] Come up with design, work out rough idea.
- [x] Keycaps!
- [x] Finalize design of keyboard. (Here right now)
- [x] Begin printing keyboard
- [x] Keyboard assembly
- [x] Keyboard programming
- [x] Keyboard finished! Now forever config!
- [x] Create post-build log with images taken during the process.
- [ ] Tidy up the repository, as well as the forked dependency repos too.
- [ ] Merge request with the used projects, contributing back!
	- [ ] QMK, adding a handwired keyboard.
	- [ ] hotswap_pcb_generator, adding another example keyboard and adding some other features.
