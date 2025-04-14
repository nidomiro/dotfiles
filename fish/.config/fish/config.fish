if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Load Secrets
if test -f ~/.shell/secrets.sh
    bass source ~/.shell/secrets.sh
end
