{{- define "solar-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "solar-service.labels" -}}
app.kubernetes.io/name: solar-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: renewable
{{- end -}}

{{- define "solar-service.selectorLabels" -}}
app.kubernetes.io/name: solar-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
