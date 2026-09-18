#> tnsp:tech/sword/kill
#
# 検知用のinteractionをkill
#
# @within function tnsp:tech/sword/tick
#.        function tnsp:tech/sword/detect_slash

function tnsp:misc/search_uuid {tag:kt.detect_slash}

kill @e[tag=kt.this,tag=kt.detect_slash]