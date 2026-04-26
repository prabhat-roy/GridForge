{{- define "network-model.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "network-model.labels" -}}
app.kubernetes.io/name: network-model
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: transmission
{{- end -}}

{{- define "network-model.selectorLabels" -}}
app.kubernetes.io/name: network-model
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
