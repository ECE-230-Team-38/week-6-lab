# Number Theory: Addition TEAM 38

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions TEAM 38

## Summary
In this lab we learned a lot about how binary addition maps to real circuits, a stairway XOR behaves like basic 1 bit addition, a 1 bit adder uses XOR for the sum and AND for a carry, and lastly how a full adder adds three inputs being A, b, Cin and produces Sum, Cout. We also practiced mapping switches and LEDs with the XDC file and verified what we did on the board. 

### 1 - How might you add more than two bits together?
You would just need to use full adders in series, connect each stage's Cout to next Cin and set the LSB's Cin to zero, then wire bit-i of the two numbers into stage-i.

### 2 - What is the importance of the XOR gate in an adder?
XOR is very important in an adder since the sum output is 1 when an odd number of the three inputs are 1. Without XOR, you'd just need more gates to recreate the same exact thing which wouldn't be very efficient.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
Each operand is 2 bits with the largest sum being 3 + 3 = 6 and appears as Cout:Sum = 1 10 which is just binary 110 on the LEDs. If you end up ignoring the carry LED, you can correctly read values up to 6.
