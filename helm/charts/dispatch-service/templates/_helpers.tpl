{{- define "dispatch-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "dispatch-service.labels" -}}
app.kubernetes.io/name: dispatch-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: generation
{{- end -}}

{{- define "dispatch-service.selectorLabels" -}}
app.kubernetes.io/name: dispatch-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
