# freshservice_apiv2
Wrapper for Freshservice API V2
# FS APIV2


## Installation

Add this line to your application's Gemfile:

    gem 'freshservice_apiv2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install freshservice_apiv2

## Authentication
# With username & password:
* [Authentication via Username Password](https://gist.github.com/rishabh91/c69c479d4784e86f32569d720e9501cd)

# With ApiKey:
Every agent in freshservice has an api key associated to them use it to authenticate you API calls.

* [Authentication via Apikey](https://gist.github.com/rishabh91/7f80b3fcb7ff34d6d9296459ac1fe82c)

# Content-Type in headers:
If Content-Type is not provided by Default it sets it to 'application/json', however it can be changed as per your requirement. For instance
For creating tickets with attachments the content-type should be set to 'multipart/form-data'. For doing that create a client object
as described above then use the object to change the content-type key in your header.

client.header["Content-Type"] = "multipart/form-data"

## Usage

* [Create Ticket](https://gist.github.com/rishabh91/240c06b2606a169af78bf9d9ecb6564b)
* [View Ticket](https://gist.github.com/rishabh91/421b5bbc2d932bba17ec9b87c487a934)
* [Create Ticket with Attachment](https://gist.github.com/rishabh91/51c4300543818ac7ceb6fb51681d96a3)
* [Update Ticket](https://gist.github.com/rishabh91/c50d15743aaa8eac160186ee0376b4f3)
* [Delete Ticket](https://gist.github.com/rishabh91/0efee984ef6e0f0983c0f34d1ca91466)
* [Add Note to Ticket](https://gist.github.com/rishabh91/e3d9d0bc1fd6fb72d4f9930e50db4eee)
* [Add Reply to Ticket](https://gist.github.com/rishabh91/4b59b2bbb7307c7a945b9c8011302569)
* [Get All conversations of a Ticket](https://gist.github.com/rishabh91/7a31bf9046af27fcdab6348222bc61a0)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
