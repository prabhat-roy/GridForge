{{- define "scada-gateway.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "scada-gateway.labels" -}}
app.kubernetes.io/name: scada-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: grid-ops
{{- end -}}

{{- define "scada-gateway.selectorLabels" -}}
app.kubernetes.io/name: scada-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
