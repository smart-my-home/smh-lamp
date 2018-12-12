#!/bin/bash
make -C led config
make -C led all
sudo make -C led flash