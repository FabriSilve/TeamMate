# TeamMate - Homebrew Formula
> You can use this script to quickly open and share pull request(s) for your project with your team.
> By default the command does a normal push to the server creating a pull request on 'master' branch using the last commit message as pull request tile and adding a label with the name of the branch.
> The default values can be overriden with a config file in the current folder.
> If in the configuration file the notification formatter and hook are defined, a post request is done to share the pull request info with the team.
>
>> **Options:**
>>
>> **-f**              : Force push to the server.
>>
>> **-t "new title"**  : Set the title used for the pull request and the notification.
>>
>> **-b "brA [brB]"**  : Set the destination branch(es). It uses space as separator.
>>
>> **-u**              : Skip the pull request(s) creation and fetch the first pull request url to send in the notification.
>>
>> **-s**              : Silence the notification.
>>
>> **-w**              : Add a 'WIP' label to the pull request(s) created
>
> *Note: This script is depending on 'hub', 'git' and 'curl'.*

---

## Intallation
> Run the following script in your terminal to install the Formula locally

```sh
brew create https://github.com/FabriSilve/TeamMate/raw/master/teammate-1.3.tar.gz --set-name teammate
```

> In the file automatically opened in your default text editor paste the following code

```ruby
class Teammate < Formula
  desc "A script to create and share faster github pull requests in your team"
  homepage "https://fabrisilve.github.io/TeamMate/"
  url "https://github.com/FabriSilve/TeamMate/raw/master/teammate-1.3.tar.gz"
  sha256 "bdb9c7b1c4ddba3a0e20a26f605da1530d02e0ab290db10dccf932b7ab4d6387"
  version "1.3"

  depends_on "hub"
  depends_on "git"
  depends_on "curl"

  def install
    bin.install "teammate"
  end
end
```

> Finally to install the new formula you have to use homebrew and enjoy
```sh
brew install teammate
```

---
## Configuration file

> The config file has to be called `.team` and it need to be created in the folder where the script is called.
> The Defaults field overridable are:
- DEFAULT_BRANCH: A string of branches splitted by spaces.
- NOTIFICATION_HOOK: An url where the http POST request will be done for notification
- FORMATTER(): A method that receive author, message, pull request url and title. It has to set the variable NOTIFICATION with the JSON string to send in the request.

> Example of `.team` file

```shell
DEFAULT_BRANCH="production"
NOTIFICATION_HOOK="https://hooks.slack.com/services/<TOKEN>"

FORMATTER(){
  author=${1:- }
  message=${2:- }
  url=${3:- }
  title=${4:- }
  NOTIFICATION="{\"username\":\"$author\",\"text\": \"$message <$url|$title>\"}"
}
```

-----
-----

## Note for developer

#### Documentation links
> https://docs.brew.sh/Formula-Cookbook

> https://rubydoc.brew.sh/Formula

#### Create archive folder
```sh
tar -zcvf team-mate.tar.gz src
```

#### Create sha256 hash
```sh
shasum -a 256 team-mate.tar.gz | awk '{printf $1}' | pbcopy
```
 
