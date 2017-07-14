#!/usr/bin/env bash

./sbt "++$TRAVIS_SCALA_VERSION" "project geowave-index" test || { exit 1; }
./sbt "++$TRAVIS_SCALA_VERSION" "project hilbert" test       || { exit 1; }
./sbt "++$TRAVIS_SCALA_VERSION" "project zorder" test        || { exit 1; }
