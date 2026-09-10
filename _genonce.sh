#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

libs="-packages ../br.org.hl7.terminologia/docs/"

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"
publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $txoption $libs $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $txoption $libs $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi

OUTPUT_DIR=${OUTPUT_DIR:-docs}

if [ -d "output" ]; then
  echo "Moving generated site from output/ to $OUTPUT_DIR/"
  rm -rf "$OUTPUT_DIR"
  mkdir -p "$OUTPUT_DIR"
  mv output/* "$OUTPUT_DIR"
  echo "Site copied to $OUTPUT_DIR/"
else
  echo "No output/ folder generated; nothing to copy."
fi
