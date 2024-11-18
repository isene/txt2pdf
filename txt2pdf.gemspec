Gem::Specification.new do |s|
  s.name        = 'txt2pdf'
  s.version     = '1.1.0'
  s.licenses    = ['Unlicense']
  s.summary     = "Converts plain text (file or from STDIN) to pdf via pdflatex"
  s.description = "Reads a text file (if supplied as the first argument) and creates a pdf file with the same name but with .pdf as extension in the current directory via the program pdflatex (the only requirement besides ruby itself). If '-h' is the first argument, then the program displays the helptext and exits.

The program can also read the input text from STDIN (STanDard IN) and create the pdf file in the user's home directory. When this method is used, no argument is given to the program and the text is simply piped directly into the program like this: $ echo 'Hello' | txt2pdf

This would create a pdf file with only 'Hello' and the page number at the bottom of the resulting pdf page.

With this, you could map a key binding in your window manager to create a pdf file from the text you selected in any program, be it the terminal, your browser or your text editor. In my wm of choice, i3, I have added the following to my i3 config: bindsym $mod+p exec xclip -o | txt2pdf

This would create a pdf file from the text I have selected as I hit the 'Window Button' and 'p'."
  s.authors     = ["Geir Isene"]
  s.email       = 'g@isene.com'
  s.files       = ["bin/txt2pdf"]
  s.executables << 'txt2pdf'
  s.homepage    = 'https://isene.com/'
  s.metadata    = { "source_code_uri" => "https://github.com/isene/txt2pdf"}
end
