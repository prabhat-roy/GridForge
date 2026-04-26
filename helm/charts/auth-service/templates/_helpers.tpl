{{- define "auth-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "auth-service.labels" -}}
app.kubernetes.io/name: auth-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: identity
{{- end -}}

{{- define "auth-service.selectorLabels" -}}
app.kubernetes.io/name: auth-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
