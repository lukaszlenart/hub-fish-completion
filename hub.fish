function __fish_hub_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'hub' ]
    return 0
  end
  return 1
end

function __fish_hub_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

complete -f -c hub -n '__fish_hub_needs_command' -a pull-request -d "Opens a pull request on GitHub for the project that the "origin" remote points to."
complete -f -c hub -n '__fish_hub_using_command pull-request' -a '-o' -d "the new pull request will open in the web browser"
complete -f -c hub -n '__fish_hub_using_command pull-request' -a '--browse' -d "the new pull request will open in the web browser"
complete -f -c hub -n '__fish_hub_using_command pull-request' -a '-f' -d "skip check of commits not pushed to the remote"
complete -f -c hub -n '__fish_hub_using_command pull-request' -a '-m' -d "title and body of the pull request can be entered in the same manner as git commit message"
complete -f -c hub -n '__fish_hub_using_command pull-request' -a '-F' -d "title and body of the pull request can be entered in the same manner as git commit message"
complete -f -c hub -n '__fish_hub_using_command pull-request' -a '-d' -d 'BASE, formats: "branch", "owner:branch", "owner/repo:branch"'
complete -f -c hub -n '__fish_hub_using_command pull-request' -a '-h' -d 'HEAD, formats: "branch", "owner:branch", "owner/repo:branch"'
