{{- define "roaming-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "roaming-service.labels" -}}
app.kubernetes.io/name: roaming-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: ev-charging
{{- end -}}

{{- define "roaming-service.selectorLabels" -}}
app.kubernetes.io/name: roaming-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
