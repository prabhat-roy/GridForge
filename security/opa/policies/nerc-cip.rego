package gridforge.nerc_cip

# NERC CIP-005: every BES Cyber Asset access logged + dual-authorised.
import future.keywords.if

default allow_bes_access := false

allow_bes_access if {
    input.actor.has_cip_training == true
    input.access.dual_authorised == true
    input.audit.session_logged == true
}
