var Notes = Application('Notes');

var wordsInbox = Notes.folders.byName("🇬🇧 English");
var notesInbox = Notes.folders.byName("Notes");

var newNote = Notes.Note({
	name: "Vocabulary Update " + (new Date).toLocaleDateString(),
	container: notesInbox,
	body: ""
});

var body = ""

for (i in wordsInbox.notes) {
	body += wordsInbox.notes[i].name() + "\n";
	body += wordsInbox.notes[i].body().replace(/<(?:.|\n)*?>/gm, "\n");
}

body = [...new Set(body.split("\n").map(word => word.trim().toLocaleLowerCase()))]
	.filter(word => word)
	.sort()
	.map(word => "<li>" + word + "</li>")
	.join("\n");

newNote.body = "<ul>" + body + "</ul>"

notesInbox.addElement(newNote);
