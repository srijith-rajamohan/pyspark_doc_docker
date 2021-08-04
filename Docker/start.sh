#!/bin/bash
cd notebooks && sphinx-serve -b new -p 8080 &
cd notebooks && sphinx-autobuild source new/html &
