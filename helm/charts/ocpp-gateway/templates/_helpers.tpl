{{- define "ocpp-gateway.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ocpp-gateway.labels" -}}
app.kubernetes.io/name: ocpp-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: ev-charging
{{- end -}}

{{- define "ocpp-gateway.selectorLabels" -}}
app.kubernetes.io/name: ocpp-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
