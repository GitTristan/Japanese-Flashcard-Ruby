fred = {name: "Fred", age: 35, knows_html: false}
james = {name: "James", age: 24, job: "Lead Developer" }

p james[:knows_html] || "We don't know"
p fred[:knows_html] || "We don't know"
p fred.fetch(:knows_html) { "We don't know" }

