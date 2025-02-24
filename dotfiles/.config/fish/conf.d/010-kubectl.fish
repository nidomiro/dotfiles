
abbr --add k 'kubectl'

abbr --add kga 'kubectl api-resources --verbs=list --namespaced -o name  | xargs -n 1 kubectl get --show-kind --ignore-not-found  -n'