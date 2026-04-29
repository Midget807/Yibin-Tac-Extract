# extraction

function yibextract:extraction/zones
function yibextract:extraction/extraction
function yibextract:extraction/backtobase

# deployment 

function yibextract:deployment/shittyrng
function yibextract:deployment/deployzones
function yibextract:deployment/deployment
function yibextract:deployment/check_deploy_zone_safe

#gtfo

execute if score #active gtfo matches 1 run function yibextract:gtfo/update
function yibextract:gtfo_horn/check_for_call

# inMap

function yibextract:inmap/spawnpoints
function yibextract:inmap/enforce_inmap

#freekit

function yibextract:freekit/update

#vaults

function yibextract:vaults/update