#!/bin/bash
          echo “Enter your age:”
          read a
          if (($a>=18))
          then
          echo “Eligible for voting” 
          else
          echo “Not eligible for voting”
          fi
