#!/bin/bash

basedir="$(cd "$(dirname "$0")/.."; pwd)"

jar="$basedir/target/scala-detector-1.0.jar"
mainclass="com.github.sekruse.scala_detector.Main"

if [ ! -f "$jar" ]; then
	2> echo "Project has not yet been compiled. Run `mvn package` first."
	exit 1
fi

if [ $# -eq 0 ]; then
	echo "This tools detects the Scala version on a some classpath."
	echo "Usage: $0 <classpath element>..."
	exit 1
fi

classpath="$jar"
for arg in "$@"; do classpath="$classpath:$arg"; done
java -cp "$classpath" "$mainclass"