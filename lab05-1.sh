#!/bin/bash
          echo “Enter value of n:”
          read n
          for ((i==2 ; i<=n/2 ; i++))
          do
          if ((n%i==0))
          then
          echo “The given number  is not prime.”
          break
          else
          x=1
          fi
          done
          if ((x==1))
          then
          echo “The given number  is  prime.”
          fi
