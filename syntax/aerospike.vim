" Vim syntax file
" Language: aerospike configuration file
" Maintainer: Yoshihisa Sakamoto <sakamoto.yoshihisa@gmail.com>
" Last Change: 2014-10-15
" License: This file is placed in the public domain.

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

setlocal iskeyword+=-
syntax case match

syn keyword aeroContext logging network cluster xdr namespace service fabric info heartbeat storage-engine

syn keyword aeroServiceConParam configuration-reference user group run-as-daemon proto-fd-max transaction-queues transaction-threads-per-queue
syn keyword aeroServiceConParam nsup-queue-escape nsup-period nsup-queue-hwm nsup-queue-lwm nsup-startup-evict paxos-single-replica-limit pidfile
syn keyword aeroServiceConParam migrate-threads migrate-xmit-hwm migrate-xmit-lwm migrate-xmit-priority migrate-xmit-sleep migrate-max-num-incoming
syn keyword aeroServiceConParam migrate-read-priority migrate-read-sleep transaction-retry-ms transaction-max-ms transaction-pending-limit defrag-queue-hwm
syn keyword aeroServiceConParam defrag-queue-lwm defrag-queue-escape defrag-queue-priority transaction-repeatable-read generation-disable transaction-duplicate-threads
syn keyword aeroServiceConParam hist-track-back hist-track-thresholds hist-track-slice batch-max-requests batch-priority batch-threads dump-message-above-size
syn keyword aeroServiceConParam info-threads microbenchmarks paxos-protocol paxos-retransmit-period proto-fd-idle-ms respond-client-on-master-completion
syn keyword aeroServiceConParam replication-fire-and-forget scan-max-inflight-jobs scan-priority scan-retransmit storage-benchmarks ticker-interval
syn keyword aeroServiceConParam use-queue-per-device write-duplicate-resolution-disable paxos-max-cluster-size prole-extra-ttl fabric-workers service-threads

syn keyword aeroNetworkConParam address port access-address network-interface-name
syn keyword aeroNetworkConParam mode interface-address mesh-seed-address-port
syn keyword aeroNetworkConParam mesh-address mesh-port interval timeout mcast-ttl protocol

syn keyword aeroNamespaceConParam storage-engine device file filesize data-in-memory defrag-period defrag-lwm-pct defrag-sleep
syn keyword aeroNamespaceConParam defrag-max-blocks defrag-startup-minimum write-block-size post-write-queue scheduler-mode replication-factor
syn keyword aeroNamespaceConParam low-water-pct high-water-memory-pct high-water-disk-pct evict-tenths-pct stop-writes-pct memory-size
syn keyword aeroNamespaceConParam default-ttl max-ttl allow-versions single-bin

syn keyword aeroXdrConParam enable-xdr data-in-index xdr-namedpipe-path xdr-digestlog-path xdr-errorlog-path
syn keyword aeroXdrConParam local-node-port xdr-info-port forward-xdr-writes stop-writes-noxdr xdr-delete-shipping-enabled
syn keyword aeroXdrConParam xdr-nsup-deletes-enabled xdr-threads xdr-max-recs-inflight xdr-read-mode xdr-read-threads xdr-read-batch-size
syn keyword aeroXdrConParam xdr-write-batch-size xdr-compression-threshold xdr-hotkey-maxskip xdr-pidfile xdr-forward-with-gencheck
syn keyword aeroXdrConParam xdr-forward-writes xdr-check-data-before-delete xdr-shipping-enabled xdr-batch-retry-sleep
syn keyword aeroXdrConParam xdr-batch-num-retry dc-node-address-port dc-int-ext-ipmap

syn keyword aeroClusterConParam self-node-id self-group-id
syn keyword aeroLogConParam context critical warning info debug detail


syn match aeroComment '#.*'
syn match aeroNumber   display "\d\+"
syn match aeroIpAddr /\<\(25[0-5]\|2[0-4][0-9]\|[01]\?[0-9][0-9]\?\)\.\(25[0-5]\|2[0-4][0-9]\|[01]\?[0-9][0-9]\?\)\.\(25[0-5]\|2[0-4][0-9]\|[01]\?[0-9][0-9]\?\)\.\(25[0-5]\|2[0-4][0-9]\|[01]\?[0-9][0-9]\?\)\>/
syn keyword aeroAction  any none true false
syn keyword aeroContext namespace storage-engine nextgroup=aeroNamespace skipwhite
syn match aeroNamespace "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained


hi link aeroFunction           Function
hi link aeroComment            Comment
hi link aeroNumber             Number
hi link aeroIpAddr	           Special
hi link aeroAction             Boolean
hi link aeroContext            Statement
hi link aeroNamespace          Special
hi link aeroServiceConParam    Function
hi link aeroNetworkConParam    Function
hi link aeroNamespaceConParam  Function
hi link aeroXdrConParam        Function
hi link aeroClusterConParam    Function
hi link aeroLogConParam        Statement

let b:current_syntax = "aerospikeconfig"
