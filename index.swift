"center".htm(single: true)

// MARK: - Head

"head".htm() {

	"meta".htm(["name=viewport", "content='width=device-width, initial-scale=1'"])

	"meta".htm(["charset='UTF-8'"])
	"title".htm() {
		print("ColdGrub1384")
	}
}

// MARK: Body

"body".htm() {

	"h1".htm() {
		print("ColdGrub1384")
	}

	"a".htm(["href='https://github.com/ColdGrub1384'"]) {
		"img".htm(["src='http://coldg.ddns.net/octocat.png'"])
		print("GitHub")
	}

	"h2".htm() {
		print("My projects")
	}
}

// MARK: - Projects

Pisth().render()
SwiftyWeb().render()


"/center".htm(single: true)


// MARK: - Style

"style".htm() {
	print("* {")
	print("font-family: 'Helvetica', 'Arial', sans-serif")
	print("}")

	print("a:link {")
	print("color: blue;")
	print("text-decoration: none;")
	print("}")

	print("a:visited {")
	print("color: blue;")
	print("text-decoration: none;")
	print("}")

	print("a img {")
  	print("height: 1em;")
  	print("width: auto;")
	print("}")
}
