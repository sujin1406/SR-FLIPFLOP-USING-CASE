# SR-FLIPFLOP-USING-CASE

**AIM:**

To implement  SR flipflop using verilog and validating their functionality using their functional tables

**SOFTWARE REQUIRED:**

Quartus prime

**THEORY**

SR Flip-Flop SR flip-flop operates with only positive clock transitions or negative clock transitions. Whereas, SR latch operates with enable signal. The circuit diagram of SR flip-flop is shown in the following figure.

![image](https://github.com/naavaneetha/SR-FLIPFLOP-USING-CASE/assets/154305477/0f710028-ad52-4d3e-9276-8714cf023a25)

 
This circuit has two inputs S & R and two outputs Qtt & Qtt’. The operation of SR flipflop is similar to SR Latch. But, this flip-flop affects the outputs only when positive transition of the clock signal is applied instead of active enable. The following table shows the state table of SR flip-flop.

![image](https://github.com/naavaneetha/SR-FLIPFLOP-USING-CASE/assets/154305477/dabfc4f4-87e3-4cbc-9472-f89ee1b5ed30)

 
Here, Qtt & Qt+1t+1 are present state & next state respectively. So, SR flip-flop can be used for one of these three functions such as Hold, Reset & Set based on the input conditions, when positive transition of clock signal is applied. The following table shows the characteristic table of SR flip-flop. Present Inputs Present State Next State

![image](https://github.com/naavaneetha/SR-FLIPFLOP-USING-CASE/assets/154305477/dd90d16c-aec5-4290-a586-e2346b1e9eb5)

 
By using three variable K-Map, we can get the simplified expression for next state, Qt+1t+1. The three variable K-Map for next state, Qt+1t+1 is shown in the following figure.

![image](https://github.com/naavaneetha/SR-FLIPFLOP-USING-CASE/assets/154305477/473efad6-d70b-4ca7-aeb7-898bbfca319f)

 
The maximum possible groupings of adjacent ones are already shown in the figure. Therefore, the simplified expression for next state Qt+1t+1 is Q(t+1)=S+R′Q(t)Q(t+1)=S+R′Q(t)

**Procedure**

1. Open Quartus Prime software.

2. Create a new project using **File → New Project Wizard**.

3. Enter the project name and select the project location.

4. Choose the target FPGA device and click **Finish**.

5. Create a new Verilog HDL file using
   **File → New → Verilog HDL File**.

6. Type the Verilog code for the SR Flip-Flop using case statement/behavioral modeling.

7. Save the file with the module name
   (Example: `D6.v`).

8. Set the created module as the **Top-Level Entity**.

9. Compile the design using
   **Processing → Start Compilation**.

10. Verify whether the compilation is successful and check for errors.

11. Open **University Program Waveform Editor** or use a testbench file for simulation.

12. Apply different combinations of inputs **S** and **R** along with clock pulse.

13. Run the simulation and observe the output waveform for **Q** and **Qbar**.

14. Verify the obtained outputs using the SR Flip-Flop truth table.

15. Observe the RTL schematic and timing diagram generated after compilation and simulation.

16. Conclude that the SR Flip-Flop operation is verified successfully.



**PROGRAM**

 Developed by: Sujin M L
 
 RegisterNumber: 212225040435

```
module D6(S, R, clk, Q, Qbar);

input S, R, clk;
output reg Q;
output Qbar;

assign Qbar = ~Q;

initial
begin
    Q = 0;
end

always @(posedge clk)
begin
    Q <= S | ((~R) & Q);
end

endmodule

```


**RTL LOGIC FOR FLIPFLOPS**
<img width="1919" height="1079" alt="Screenshot 2026-05-24 152923" src="https://github.com/user-attachments/assets/35a6d25c-2178-439a-83e1-d13a87be1a89" />


**TIMING DIGRAMS FOR FLIP FLOPS**
<img width="1919" height="1079" alt="Screenshot 2026-05-24 153129" src="https://github.com/user-attachments/assets/8381463e-24b2-4777-9f71-e09e6bae8205" />

**RESULTS**

Thus, the SR Flip-Flop was successfully implemented using Verilog HDL in Quartus Prime and its functionality was verified using the functional/truth table and simulation waveforms.
