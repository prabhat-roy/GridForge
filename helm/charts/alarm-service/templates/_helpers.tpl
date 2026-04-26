{{- define "alarm-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "alarm-service.labels" -}}
app.kubernetes.io/name: alarm-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: grid-ops
{{- end -}}

{{- define "alarm-service.selectorLabels" -}}
app.kubernetes.io/name: alarm-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
