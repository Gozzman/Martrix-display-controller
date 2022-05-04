Martrix display controller

Model of a logic device combining the functional nodes of a 1 kHz frequency divider, a button contact rattle filter and a FSM for generating sequence.

To emulate the operation of synchronous digital devices. CLK sync signal generator and the RST reset signal generator are described as part of the test module. In general, these blocks are not intended for implementation in the FPGA basis and can be described by non-synthesizable constructions of the Verilog language. The main test effects applied to the unit under test, atvarious points in time, are described in the flow of test effects(stimuli), and include synchronous control signals UP and STEP.

Schematic view of the synthesized part of the project:

![image](https://user-images.githubusercontent.com/81770156/166634777-38dcf837-37d3-47c1-85d9-0bb44425fd27.png)

Schematic view of the test module:

![image](https://user-images.githubusercontent.com/81770156/166634946-cc86cd00-9811-4225-b2ab-489aa11c4e74.png)

Displaying a symbol on a matrix indicator:

![image](https://user-images.githubusercontent.com/81770156/166635446-43e1f2d5-a60a-49f5-85ab-d5659f781122.png)



