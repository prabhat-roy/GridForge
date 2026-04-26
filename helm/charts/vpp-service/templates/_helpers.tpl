{{- define "vpp-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "vpp-service.labels" -}}
app.kubernetes.io/name: vpp-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: derms
{{- end -}}

{{- define "vpp-service.selectorLabels" -}}
app.kubernetes.io/name: vpp-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
