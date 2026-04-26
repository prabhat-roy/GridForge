{{- define "revenue-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "revenue-analytics.labels" -}}
app.kubernetes.io/name: revenue-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: analytics
{{- end -}}

{{- define "revenue-analytics.selectorLabels" -}}
app.kubernetes.io/name: revenue-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
