# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

Geordie Baksheeff and Erick Beltran

## Summary

Learning how to implement various flipflop types, how to use clocks/edge cases to drive the flipflops.

## Lab Questions

### What is difference between edge and level sensitive circuits?

A edge circuit will only allow the circuit to run once whenever it's edge condition is met. A level sensitive circuit will run as long as there is an input enabling it. Example, a level sensitive would read any value while an enable signal is received. A edge sensitive will only read a value when it reaches it's edge and the enable signal is received at the same time. It will only read the data present at that moment and ignore any changes until it's next edge is reached.

### Why is it important to declare initial state?

It's important because when the circuit is first initialized, it doesn't know what state each of the flipflops should be in.

### What do edge sensitive circuits let us build?

Actual computers that can run by themselves. The clock's edge can be used to change the state of a logic circuit in a synchronous way which can be used for counting or some other dependent logic.
