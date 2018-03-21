if [ "$#" -ne 1 ]; then
echo "Usage: $0 <Path to web page root directory>"
exit 2
fi

swiftw -o $1/index.cgi  Projects/* Project.swift index.swift
cp octocat.png $1/
cp background.jpg $1/
cp style.css $1/
