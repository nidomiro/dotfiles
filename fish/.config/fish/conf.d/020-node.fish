
if not string match -q -- "*--dns-result-order=ipv4first*" $NODE_OPTIONS
    set -gx NODE_OPTIONS "$NODE_OPTIONS --dns-result-order=ipv4first --max-old-space-size=1024"
end
