oc get -o json build,rc,dc,route,po,service,buildconfig,imagestream > /tmp/delete.json
oc delete -f /tmp/delete.json
oc delete pod `oc get pod |awk '{print $1}'|grep -`
