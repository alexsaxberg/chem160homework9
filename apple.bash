#!/bin/bash
cd stock_data
grep aapl ??_$1_?? | awk '{print $2}'
