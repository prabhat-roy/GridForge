{{- define "generation-forecast.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "generation-forecast.labels" -}}
app.kubernetes.io/name: generation-forecast
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: analytics
{{- end -}}

{{- define "generation-forecast.selectorLabels" -}}
app.kubernetes.io/name: generation-forecast
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
