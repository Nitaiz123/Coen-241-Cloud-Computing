#!/bin/bash

# Set memory size to 250 MB
MEMORY_SIZE="250M"

# First Memory Test Case: Sequential Memory Access
echo "Running First Memory Test: Sequential Access"
for i in {1..5}
do
    echo "Iteration $i"
    sysbench --test=memory --memory-block-size=1024 --memory-total-size=$MEMORY_SIZE --memory-oper=write --memory-access-mode=seq run
    echo ""
done

# Second Memory Test Case: Random Memory Access
echo "Running Second Memory Test: Random Access"
for i in {1..5}
do
    echo "Iteration $i"
    sysbench --test=memory --memory-block-size=1024 --memory-total-size=$MEMORY_SIZE --memory-oper=write --memory-access-mode=rnd run
    echo ""
done

echo "Memory tests completed."
