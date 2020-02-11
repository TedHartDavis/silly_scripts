# Crudely done, by Ted Hart-Davis, 11th February 2020
function kill()
{
  # Expect kill to be there.
  if [ ! -f "/usr/bin/kill" ]; then
    echo "Unable to find kill command."
  else
    # No arguments
    if [ -z "$1" ]; then
      # Say the thing
      echo -e "bash: \e[31myou need to specify whom to kill\e[39m"
    else
      "/usr/bin/kill" "$@"
    fi
  fi
}
