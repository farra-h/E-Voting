# E-Voting

## Overview
This repository contains the design and implementation of an e-voting system using Verilog HDL. The system is designed to allow users to vote for candidates, with a maximum limit of 999 votes per candidate.

## System Design
The system consists of the following components:

1. **Switch**: Acts as a clock for the counters.
2. **Counters**: There are three counters in the system, each corresponding to a candidate. These counters increment the vote count for each candidate.
3. **Seven-Segment Displays**: There are three seven-segment displays, each displaying the vote count for a candidate.

## Usage
To cast a vote for a candidate, simply press the corresponding button. The seven-segment display will update to reflect the new vote count.

## Limitations
Please note that the system is designed to handle up to 999 votes per candidate. Any votes cast beyond this limit will not be counted.

## System Simulation on Proteus
![simulation](https://github.com/farra-h/E-Voting/assets/134429241/1a966883-1668-4fc9-887e-8c2ad1a75c0c)
![simulation3](https://github.com/farra-h/E-Voting/assets/134429241/0a2c5e62-6e4f-4940-99b8-f2e5ac15c11f)
![simulation2](https://github.com/farra-h/E-Voting/assets/134429241/cd4e0cd0-2703-481d-adcd-6a4322dcc923)

## Schematic diagram using Active HDL
![schematic](https://github.com/farra-h/E-Voting/assets/134429241/d964cd58-e1e0-49f1-b688-74b8337cc525)
