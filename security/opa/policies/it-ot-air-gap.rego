package gridforge.it_ot

# IT/OT data-diode rule: commands flow IT->OT only via the signed SCADA gateway.
# A compromised IT system MUST NOT be able to issue raw commands to PLCs.
import future.keywords.if

default allow_ot_command := false

allow_ot_command if {
    input.request.target_zone == "ot"
    input.request.via == "scada-gateway"
    input.request.signature_valid == true
    input.request.operator_2fa_verified == true
}
