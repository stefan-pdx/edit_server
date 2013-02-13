# EditServer

EditServer is a small Sinatra app that works in conjunction with [Edit with Emacs](https://chrome.google.com/webstore/detail/edit-with-emacs/ljobjlafonikaiipfkggjbhkghgicgoh?hl=en) to integrate GVim with your browser. Simply install the gem (`gem install edit_server`) and kick off the daemon (`edit-server start`). Use Edit with Emacs as documented. To kill the EditServer daemon, run `edit-server stop`.

Furthermore, HTML formatting in the text area (such as the text in a Gmail e-mail) is converted to Github Flavored Markdown for easy editing. The text is converted back to HTML when translated back to Chrome.

## Requirements

* [pandoc 1.10.1.1](http://johnmacfarlane.net/pandoc/) - At the time of writing, you need to make a custom build of pandoc since the lastest distributed version lacks support for a Github Flavored Markdown reader. Make sure the executable is available in your path.

## Installation

Install edit_server:

    $ gem install edit_server

Start the daemon:

    $ edit-server start

To stop the Sinatra app:

    $ edit-server stop

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
