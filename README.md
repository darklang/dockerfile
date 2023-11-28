# dockerfile
Build our docker container

# Purpose

As a first step to our build in darklang/dark, we need to build the container,
and save it for future steps by pushing it to a repo. However, we do not want
to share the keys to push to the docker container publicly (obviously). The
solution was making a separate repo and not sharing the keys from it.

# Usage

Update this repository by running `./clone-from-dark-repo ../dark`, where the
second argument is the path of your local checkout of the dark repo, which
should have the dockerfile you want to build.

Run the script, then commit and push, and the tag(s) will be automatically
derived from the current git hash - see `tag-version.sh`. This tag will be
visible in the CircleCI build output.

Then go to the darklang/dark repo's `.circleci/config.yaml` and update
`.executors.in-container.docker[0].image` with the new tag.

