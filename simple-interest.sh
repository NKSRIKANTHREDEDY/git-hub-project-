#!/bin/bash

# Script to calculate simple interest

# Prompt user for principal, rate, and time
read -p "Enter Principal amount: " principal
read -p "Enter Rate of interest: " rate
read -p "Enter Time (in years): " time

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "Simple Interest is: ₹$interest"

